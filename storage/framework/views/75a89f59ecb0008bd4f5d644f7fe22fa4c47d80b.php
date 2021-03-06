<div class="row">
    <div class="col-md-8">
        <?php echo e(Form::checkbox('check_payment_enabled', trans('setting::attributes.check_payment_enabled'), trans('setting::settings.form.enable_check_payment'), $errors, $settings)); ?>

        <?php echo e(Form::text('translatable[check_payment_label]', trans('setting::attributes.translatable.check_payment_label'), $errors, $settings, ['required' => true])); ?>

        <?php echo e(Form::textarea('translatable[check_payment_description]', trans('setting::attributes.translatable.check_payment_description'), $errors, $settings, ['rows' => 3, 'required' => true])); ?>


        <div class="<?php echo e(old('check_payment_enabled', array_get($settings, 'check_payment_enabled')) ? '' : 'hide'); ?>" id="check-payment-fields">
            <?php echo e(Form::textarea('translatable[check_payment_instructions]', trans('setting::attributes.translatable.check_payment_instructions'), $errors, $settings, ['rows' => 3, 'required' => true])); ?>

        </div>
    </div>
</div>
<?php /**PATH /Users/nnhshu/workspace/sithimy/Modules/Setting/Resources/views/admin/settings/tabs/check_payment.blade.php ENDPATH**/ ?>