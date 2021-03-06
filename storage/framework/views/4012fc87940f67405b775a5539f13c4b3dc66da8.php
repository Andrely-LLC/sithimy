<div class="row">
    <div class="col-md-8">
        <?php echo e(Form::checkbox('instamojo_enabled', trans('setting::attributes.instamojo_enabled'), trans('setting::settings.form.enable_instamojo'), $errors, $settings)); ?>

        <?php echo e(Form::text('translatable[instamojo_label]', trans('setting::attributes.instamojo_label'), $errors, $settings, ['required' => true])); ?>

        <?php echo e(Form::textarea('translatable[instamojo_description]', trans('setting::attributes.instamojo_description'), $errors, $settings, ['rows' => 3, 'required' => true])); ?>

        <?php echo e(Form::checkbox('instamojo_test_mode', trans('setting::attributes.instamojo_test_mode'), trans('setting::settings.form.use_sandbox_for_test_payments'), $errors, $settings)); ?>


        <div class="<?php echo e(old('instamojo_enabled', array_get($settings, 'instamojo_enabled')) ? '' : 'hide'); ?>" id="instamojo-fields">
            <?php echo e(Form::text('instamojo_api_key', trans('setting::attributes.instamojo_api_key'), $errors, $settings, ['required' => true])); ?>

            <?php echo e(Form::password('instamojo_auth_token', trans('setting::attributes.instamojo_auth_token'), $errors, $settings, ['required' => true])); ?>

        </div>
    </div>
</div>
<?php /**PATH /Users/nnhshu/workspace/sithimy/Modules/Setting/Resources/views/admin/settings/tabs/instamojo.blade.php ENDPATH**/ ?>