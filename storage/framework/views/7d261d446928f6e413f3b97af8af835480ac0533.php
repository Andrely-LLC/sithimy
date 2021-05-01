<?php echo e(Form::text('vonage_key', trans('setting::attributes.vonage_key'), $errors, $settings, ['required' => true])); ?>

<?php echo e(Form::password('vonage_secret', trans('setting::attributes.vonage_secret'), $errors, $settings, ['required' => true])); ?>

<?php /**PATH C:\xampp_7.4.2\htdocs\sithimy\Modules/Setting/Resources/views/admin/settings/partials/sms_services/vonage.blade.php ENDPATH**/ ?>