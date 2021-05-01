<?php echo e(Form::text('amazon_key', trans('setting::attributes.amazon_key'), $errors, $settings, ['required' => true])); ?>

<?php echo e(Form::password('amazon_secret', trans('setting::attributes.amazon_secret'), $errors, $settings, ['required' => true])); ?>

<?php /**PATH C:\xampp_7.4.2\htdocs\sithimy\Modules/Setting/Resources/views/admin/settings/partials/sms_services/amazon.blade.php ENDPATH**/ ?>