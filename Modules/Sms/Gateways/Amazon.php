<?php

namespace Modules\Sms\Gateways;

use Exception;
use Aws\Sns\SnsClient; 
use Aws\Exception\AwsException;
use Modules\Sms\GatewayInterface;
use Modules\Sms\Exceptions\SmsException;

class Amazon implements GatewayInterface
{
    public function client()
    {
        return new SnsClient(array(
            'credentials' => array(
                'key' => setting('amazon_key'),
                'secret' => setting('amazon_key'),
            ),
            'region' => 'ap-southeast-1',
            'version' => 'latest'
        ));
        
    }

    public function send(string $to, string $message)
    {
        try {
            
            $this->client()->publish(array(
            "MessageAttributes" => [
                        // You can put your senderId here. but first you have to verify the senderid by customer support of AWS then you can use your senderId.
                        // If you don't have senderId then you can comment senderId 
                        'AWS.SNS.SMS.SenderID' => [
                            'DataType' => 'String',
                            'StringValue' => setting('sms_from')
                        ],
                        'AWS.SNS.SMS.SMSType' => [
                            'DataType' => 'String',
                            'StringValue' => 'Transactional'
                        ]
                    ],
            "Message" => $message,
            "PhoneNumber" => $to 
        ));

        } catch (Exception $e) {
            throw new SmsException('Amazon: ' . $e->getMessage());
        }
    }
}
