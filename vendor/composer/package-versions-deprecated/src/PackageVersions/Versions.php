<?php

declare(strict_types=1);

namespace PackageVersions;

use Composer\InstalledVersions;
use OutOfBoundsException;

class_exists(InstalledVersions::class);

/**
 * This class is generated by composer/package-versions-deprecated, specifically by
 * @see \PackageVersions\Installer
 *
 * This file is overwritten at every run of `composer install` or `composer update`.
 *
 * @deprecated in favor of the Composer\InstalledVersions class provided by Composer 2. Require composer-runtime-api:^2 to ensure it is present.
 */
final class Versions
{
    /**
     * @deprecated please use {@see self::rootPackageName()} instead.
     *             This constant will be removed in version 2.0.0.
     */
    const ROOT_PACKAGE_NAME = 'envaysoft/fleetcart';

    /**
     * Array of all available composer packages.
     * Dont read this array from your calling code, but use the \PackageVersions\Versions::getVersion() method instead.
     *
     * @var array<string, string>
     * @internal
     */
    const VERSIONS          = array (
  'algolia/algoliasearch-client-php' => '2.8.0@d9781147ae433f5bdbfd902497d748d60e70d693',
  'astrotomic/laravel-translatable' => 'v11.9.1@d853a3c34be42941dc83c5cddd9e1e98c71abae1',
  'aws/aws-sdk-php' => '3.176.9@17dc67514b148979994758fbfb54088a8a3393bf',
  'brick/math' => '0.9.2@dff976c2f3487d42c1db75a3b180e2b9f0e72ce0',
  'cache/adapter-common' => '1.2.0@6b87c5cbdf03be42437b595dbe5de8e97cd1d497',
  'cache/filesystem-adapter' => '1.1.0@1501ca71502f45114844824209e6a41d87afb221',
  'cache/hierarchical-cache' => '1.1.0@ba3746c65461b17154fb855068403670fd7fa2d3',
  'cache/predis-adapter' => '1.1.0@e57cc73e5615f0321b249861253ee62b2a499aa8',
  'cache/tag-interop' => '1.0.1@909a5df87e698f1665724a9e84851c11c45fbfb9',
  'cartalyst/sentinel' => 'v5.1.0@6f641c0c6fda3627a6aee9d1cd3c409e73e4fd0d',
  'cartalyst/support' => 'v5.1.2@1bf18efdc7e1c7bd4adabdbccfac48ce0fa946fe',
  'clue/stream-filter' => 'v1.5.0@aeb7d8ea49c7963d3b581378955dbf5bc49aa320',
  'composer/package-versions-deprecated' => '1.11.99.1@7413f0b55a051e89485c5cb9f765fe24bb02a7b6',
  'darryldecode/cart' => '4.2.1@2ad23e070af341da80300ef990b1fb529af88893',
  'dnoegel/php-xdg-base-dir' => 'v0.1.1@8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd',
  'doctrine/cache' => '1.10.2@13e3381b25847283a91948d04640543941309727',
  'doctrine/dbal' => '2.13.0@67d56d3203b33db29834e6b2fcdbfdc50535d796',
  'doctrine/deprecations' => 'v0.5.3@9504165960a1f83cc1480e2be1dd0a0478561314',
  'doctrine/event-manager' => '1.1.1@41370af6a30faa9dc0368c4a6814d596e81aba7f',
  'doctrine/inflector' => '2.0.3@9cf661f4eb38f7c881cac67c75ea9b00bf97b210',
  'doctrine/lexer' => '1.2.1@e864bbf5904cb8f5bb334f99209b48018522f042',
  'dragonmantank/cron-expression' => 'v3.1.0@7a8c6e56ab3ffcc538d05e8155bb42269abf1a0c',
  'drewm/mailchimp-api' => 'v2.5.4@c6cdfab4ca6ddbc3b260913470bd0a4a5cb84c7a',
  'egulias/email-validator' => '2.1.25@0dbf5d78455d4d6a41d186da50adc1122ec066f4',
  'ezyang/htmlpurifier' => 'v4.13.0@08e27c97e4c6ed02f37c5b2b20488046c8d90d75',
  'fideloper/proxy' => '4.4.1@c073b2bd04d1c90e04dc1b787662b558dd65ade0',
  'florianv/exchanger' => '2.6.2@d6322d89b2282aa738ad1f3e0ef27b731b1b7f5d',
  'florianv/swap' => '4.3.0@88edd27fcb95bdc58bbbf9e4b00539a2843d97fd',
  'graham-campbell/result-type' => 'v1.0.1@7e279d2cd5d7fbb156ce46daada972355cea27bb',
  'guzzlehttp/guzzle' => '7.3.0@7008573787b430c1c1f650e3722d9bba59967628',
  'guzzlehttp/promises' => '1.4.1@8e7d04f1f6450fef59366c399cfad4b9383aa30d',
  'guzzlehttp/psr7' => '1.8.1@35ea11d335fd638b5882ff1725228b3d35496ab1',
  'instamojo/instamojo-php' => '0.4@99dc50bf008be77be84f447607e416f73f319904',
  'jackiedo/dotenv-editor' => '1.2.0@f93690a80915d51552931d9406d79b312da226b9',
  'laminas/laminas-diactoros' => '2.5.0@4ff7400c1c12e404144992ef43c8b733fd9ad516',
  'laminas/laminas-zendframework-bridge' => '1.2.0@6cccbddfcfc742eb02158d6137ca5687d92cee32',
  'laravel/framework' => 'v8.36.2@0debd8ad6b5aa1f61ccc73910adf049af4ca0444',
  'laravel/helpers' => 'v1.4.1@febb10d8daaf86123825de2cb87f789a3371f0ac',
  'laravel/legacy-factories' => 'v1.1.0@5e3fe2fd5fda64e20ea5c74c831a7346294e902a',
  'laravel/scout' => 'v8.6.1@7fb1c860a2fd904f0e084a7cc3641eb1448ba278',
  'laravel/socialite' => 'v5.2.3@1960802068f81e44b2ae9793932181cf1cb91b5c',
  'laravel/tinker' => 'v2.6.1@04ad32c1a3328081097a181875733fa51f402083',
  'laravelcollective/html' => 'v6.2.1@ae15b9c4bf918ec3a78f092b8555551dd693fde3',
  'lcobucci/jwt' => '3.4.5@511629a54465e89a31d3d7e4cf0935feab8b14c1',
  'league/commonmark' => '1.5.8@08fa59b8e4e34ea8a773d55139ae9ac0e0aecbaf',
  'league/flysystem' => '1.1.3@9be3b16c877d477357c015cec057548cf9b2a14a',
  'league/flysystem-aws-s3-v3' => '1.0.29@4e25cc0582a36a786c31115e419c6e40498f6972',
  'league/flysystem-cached-adapter' => '1.1.0@d1925efb2207ac4be3ad0c40b8277175f99ffaff',
  'league/mime-type-detection' => '1.7.0@3b9dff8aaf7323590c1d2e443db701eb1f9aa0d3',
  'league/oauth1-client' => 'v1.9.0@1e7e6be2dc543bf466236fb171e5b20e1b06aee6',
  'maatwebsite/excel' => '3.1.30@aa5d2e4d25c5c8218ea0a15103da95f5f8728953',
  'maatwebsite/laravel-sidebar' => '2.4.0@8da48f5f256eeae7f880ed350e48801b52005e11',
  'maennchen/zipstream-php' => '2.1.0@c4c5803cc1f93df3d2448478ef79394a5981cc58',
  'markbaker/complex' => '2.0.0@9999f1432fae467bc93c53f357105b4c31bb994c',
  'markbaker/matrix' => '2.1.2@361c0f545c3172ee26c3d596a0aa03f0cef65e6a',
  'mcamara/laravel-localization' => '1.6.1@4f0bfd89e5ee8100cb8cff8ca2cc3b985ed46694',
  'mehedi/laravel-captcha' => 'v3.2.0@3c67ac7b6b0aa1f9083606d83400051ef719d569',
  'mehedi/stylist' => 'dev-master@2cbaace35fc8f600b2455aed6d7f6e226f712709',
  'mexitek/phpcolors' => 'v0.4@89bf30473a68dc8845e46e9db3e536b969e18c11',
  'monolog/monolog' => '2.2.0@1cb1cde8e8dd0f70cc0fe51354a59acad9302084',
  'mtdowling/jmespath.php' => '2.6.0@42dae2cbd13154083ca6d70099692fef8ca84bfb',
  'myclabs/php-enum' => '1.8.0@46cf3d8498b095bd33727b13fd5707263af99421',
  'nesbot/carbon' => '2.46.0@2fd2c4a77d58a4e95234c8a61c5df1f157a91bf4',
  'nikic/php-parser' => 'v4.10.4@c6d052fc58cb876152f89f532b95a8d7907e7f0e',
  'nwidart/laravel-modules' => '8.2.0@6ade5ec19e81a0e4807834886a2c47509d069cb7',
  'nyholm/psr7' => '1.4.0@23ae1f00fbc6a886cbe3062ca682391b9cc7c37b',
  'opis/closure' => '3.6.1@943b5d70cc5ae7483f6aff6ff43d7e34592ca0f5',
  'paypal/paypal-checkout-sdk' => '1.0.1@ed6a55075448308b87a8b59dcb7fedf04a048cb1',
  'paypal/paypalhttp' => '1.0.0@1ad9b846a046f09d6135cbf2cbaa7701bbc630a3',
  'paytm/paytmchecksum' => 'v1.1.0@a032d3cbeb3846720c2c606b9f3c8057c355042e',
  'php-http/curl-client' => '2.2.0@15b11b7c2f39fe61ef6a70e0c247b4a84e845cdb',
  'php-http/discovery' => '1.13.0@788f72d64c43dc361e7fcc7464c3d947c64984a7',
  'php-http/httplug' => '2.2.0@191a0a1b41ed026b717421931f8d3bd2514ffbf9',
  'php-http/message' => '1.11.0@fb0dbce7355cad4f4f6a225f537c34d013571f29',
  'php-http/message-factory' => 'v1.0.2@a478cb11f66a6ac48d8954216cfed9aa06a501a1',
  'php-http/promise' => '1.1.0@4c4c1f9b7289a2ec57cde7f1e9762a5789506f88',
  'phpoffice/phpspreadsheet' => '1.16.0@76d4323b85129d0c368149c831a07a3e258b2b50',
  'phpoption/phpoption' => '1.7.5@994ecccd8f3283ecf5ac33254543eb0ac946d525',
  'predis/predis' => 'v1.1.7@b240daa106d4e02f0c5b7079b41e31ddf66fddf8',
  'psr/cache' => '1.0.1@d11b50ad223250cf17b86e38383413f5a6764bf8',
  'psr/container' => '1.1.1@8622567409010282b7aeebe4bb841fe98b58dcaf',
  'psr/event-dispatcher' => '1.0.0@dbefd12671e8a14ec7f180cab83036ed26714bb0',
  'psr/http-client' => '1.0.1@2dfb5f6c5eff0e91e20e913f8c5452ed95b86621',
  'psr/http-factory' => '1.0.1@12ac7fcd07e5b077433f5f2bee95b3a771bf61be',
  'psr/http-message' => '1.0.1@f6561bf28d520154e4b0ec72be95418abe6d9363',
  'psr/log' => '1.1.3@0f73288fd15629204f9d42b7055f72dacbe811fc',
  'psr/simple-cache' => '1.0.1@408d5eafb83c57f6365a3ca330ff23aa4a5fa39b',
  'psy/psysh' => 'v0.10.7@a395af46999a12006213c0c8346c9445eb31640c',
  'ralouphie/getallheaders' => '3.0.3@120b605dfeb996808c31b6477290a714d356e822',
  'ramsey/collection' => '1.1.3@28a5c4ab2f5111db6a60b2b4ec84057e0f43b9c1',
  'ramsey/uuid' => '4.1.1@cd4032040a750077205918c86049aa0f43d22947',
  'razorpay/razorpay' => '2.6.0@6dad785301f6391fad108dc0abccea662ad7f93b',
  'rmccue/requests' => 'v1.7.0@87932f52ffad70504d93f04f15690cf16a089546',
  'spatie/laravel-newsletter' => '4.9.0@659893001e73b5ea5b9b6dd73a06a8574ea735a7',
  'spatie/once' => '2.2.1@e6c13ae474a7d4b30975ef6a502a593874ac12d2',
  'spatie/schema-org' => '3.3.0@c847dc09c78e8ba8fe3a32e062c05368388671c1',
  'stripe/stripe-php' => 'v7.76.0@47e66d4186712be33c593fe820dccf270a04d5d6',
  'swayok/alternative-laravel-cache' => '5.4.13@3fee1f4eeb1c88d29ff3869a36d970f9f254f5f9',
  'swiftmailer/swiftmailer' => 'v6.2.7@15f7faf8508e04471f666633addacf54c0ab5933',
  'symfony/console' => 'v5.2.6@35f039df40a3b335ebf310f244cb242b3a83ac8d',
  'symfony/css-selector' => 'v5.2.4@f65f217b3314504a1ec99c2d6ef69016bb13490f',
  'symfony/deprecation-contracts' => 'v2.2.0@5fa56b4074d1ae755beb55617ddafe6f5d78f665',
  'symfony/error-handler' => 'v5.2.6@bdb7fb4188da7f4211e4b88350ba0dfdad002b03',
  'symfony/event-dispatcher' => 'v5.2.4@d08d6ec121a425897951900ab692b612a61d6240',
  'symfony/event-dispatcher-contracts' => 'v2.2.0@0ba7d54483095a198fa51781bc608d17e84dffa2',
  'symfony/finder' => 'v5.2.4@0d639a0943822626290d169965804f79400e6a04',
  'symfony/http-client-contracts' => 'v2.3.1@41db680a15018f9c1d4b23516059633ce280ca33',
  'symfony/http-foundation' => 'v5.2.4@54499baea7f7418bce7b5ec92770fd0799e8e9bf',
  'symfony/http-kernel' => 'v5.2.6@f34de4c61ca46df73857f7f36b9a3805bdd7e3b2',
  'symfony/intl' => 'v5.2.4@11b4217e394c80a2e313d3a4a37262fbe65a7add',
  'symfony/mime' => 'v5.2.6@1b2092244374cbe48ae733673f2ca0818b37197b',
  'symfony/options-resolver' => 'v5.2.4@5d0f633f9bbfcf7ec642a2b5037268e61b0a62ce',
  'symfony/polyfill-ctype' => 'v1.22.1@c6c942b1ac76c82448322025e084cadc56048b4e',
  'symfony/polyfill-iconv' => 'v1.22.1@06fb361659649bcfd6a208a0f1fcaf4e827ad342',
  'symfony/polyfill-intl-grapheme' => 'v1.22.1@5601e09b69f26c1828b13b6bb87cb07cddba3170',
  'symfony/polyfill-intl-icu' => 'v1.22.1@af1842919c7e7364aaaa2798b29839e3ba168588',
  'symfony/polyfill-intl-idn' => 'v1.22.1@2d63434d922daf7da8dd863e7907e67ee3031483',
  'symfony/polyfill-intl-normalizer' => 'v1.22.1@43a0283138253ed1d48d352ab6d0bdb3f809f248',
  'symfony/polyfill-mbstring' => 'v1.22.1@5232de97ee3b75b0360528dae24e73db49566ab1',
  'symfony/polyfill-php72' => 'v1.22.1@cc6e6f9b39fe8075b3dabfbaf5b5f645ae1340c9',
  'symfony/polyfill-php73' => 'v1.22.1@a678b42e92f86eca04b7fa4c0f6f19d097fb69e2',
  'symfony/polyfill-php80' => 'v1.22.1@dc3063ba22c2a1fd2f45ed856374d79114998f91',
  'symfony/process' => 'v5.2.4@313a38f09c77fbcdc1d223e57d368cea76a2fd2f',
  'symfony/routing' => 'v5.2.6@31fba555f178afd04d54fd26953501b2c3f0c6e6',
  'symfony/service-contracts' => 'v2.2.0@d15da7ba4957ffb8f1747218be9e1a121fd298a1',
  'symfony/string' => 'v5.2.6@ad0bd91bce2054103f5eaa18ebeba8d3bc2a0572',
  'symfony/translation' => 'v5.2.6@2cc7f45d96db9adfcf89adf4401d9dfed509f4e1',
  'symfony/translation-contracts' => 'v2.3.0@e2eaa60b558f26a4b0354e1bbb25636efaaad105',
  'symfony/var-dumper' => 'v5.2.6@89412a68ea2e675b4e44f260a5666729f77f668e',
  'tightenco/ziggy' => '0.9.4@82ea6ec6cb6ab3545b0245310b2a424316fe48d8',
  'tijsverkoyen/css-to-inline-styles' => '2.2.3@b43b05cf43c1b6d849478965062b6ef73e223bb5',
  'twilio/sdk' => '6.20.0@7494b78da4f5af5b761dd7b4fd9bbe52bd746f55',
  'typicms/nestablecollection' => '1.1.20@f98feb398cde33d577acac0d8fc74c0d5d25207b',
  'vlucas/phpdotenv' => 'v5.3.0@b3eac5c7ac896e52deab4a99068e3f4ab12d9e56',
  'voku/portable-ascii' => '1.5.6@80953678b19901e5165c56752d087fc11526017c',
  'vonage/client' => '2.4.0@29f23e317d658ec1c3e55cf778992353492741d7',
  'vonage/client-core' => '2.8.0@799e66d4789a48b23b3ec2e2ab3a7b0405021092',
  'vonage/nexmo-bridge' => '0.1.0@62653b1165f4401580ca8d2b859f59c968de3711',
  'webmozart/assert' => '1.10.0@6964c76c7804814a842473e0c8fd15bab0f18e25',
  'wikimedia/composer-merge-plugin' => 'v2.0.1@8ca2ed8ab97c8ebce6b39d9943e9909bb4f18912',
  'yajra/laravel-datatables-oracle' => 'v9.17.1@53b3f8532b5021ffda813a8a54ecca121834ddb7',
  'barryvdh/laravel-debugbar' => 'v3.5.5@6420113d90bb746423fa70b9940e9e7c26ebc121',
  'beyondcode/laravel-dump-server' => '1.7.0@e27c7b942ab62f6ac7168359393d328ec5215b89',
  'beyondcode/laravel-query-detector' => '1.5.0@4a3a0cfb5d5ddc5da59d530ef5c13e260adc6d07',
  'facade/flare-client-php' => '1.5.0@9dd6f2b56486d939c4467b3f35475d44af57cf17',
  'facade/ignition' => '2.7.0@bdc8b0b32c888f6edc838ca641358322b3d9506d',
  'facade/ignition-contracts' => '1.0.2@3c921a1cdba35b68a7f0ccffc6dffc1995b18267',
  'fakerphp/faker' => 'v1.14.1@ed22aee8d17c7b396f74a58b1e7fefa4f90d5ef1',
  'filp/whoops' => '2.12.0@d501fd2658d55491a2295ff600ae5978eaad7403',
  'maximebf/debugbar' => 'v1.16.5@6d51ee9e94cff14412783785e79a4e7ef97b9d62',
  'nunomaduro/collision' => 'v5.3.0@aca63581f380f63a492b1e3114604e411e39133a',
  'symfony/debug' => 'v4.4.20@157bbec4fd773bae53c5483c50951a5530a2cc16',
  'envaysoft/fleetcart' => 'dev-main@6592e0a0c5b2492a91808de29e928b104f80fa0b',
);

    private function __construct()
    {
    }

    /**
     * @psalm-pure
     *
     * @psalm-suppress ImpureMethodCall we know that {@see InstalledVersions} interaction does not
     *                                  cause any side effects here.
     */
    public static function rootPackageName() : string
    {
        if (!class_exists(InstalledVersions::class, false) || !InstalledVersions::getRawData()) {
            return self::ROOT_PACKAGE_NAME;
        }

        return InstalledVersions::getRootPackage()['name'];
    }

    /**
     * @throws OutOfBoundsException If a version cannot be located.
     *
     * @psalm-param key-of<self::VERSIONS> $packageName
     * @psalm-pure
     *
     * @psalm-suppress ImpureMethodCall we know that {@see InstalledVersions} interaction does not
     *                                  cause any side effects here.
     */
    public static function getVersion(string $packageName): string
    {
        if (class_exists(InstalledVersions::class, false) && InstalledVersions::getRawData()) {
            return InstalledVersions::getPrettyVersion($packageName)
                . '@' . InstalledVersions::getReference($packageName);
        }

        if (isset(self::VERSIONS[$packageName])) {
            return self::VERSIONS[$packageName];
        }

        throw new OutOfBoundsException(
            'Required package "' . $packageName . '" is not installed: check your ./vendor/composer/installed.json and/or ./composer.lock files'
        );
    }
}
