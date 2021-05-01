<div class="row">
    <div class="col-md-8">
        <?php echo e(Form::checkbox('local_pickup_enabled', trans('setting::attributes.local_pickup_enabled'), trans('setting::settings.form.enable_local_pickup'), $errors, $settings)); ?>

        <?php echo e(Form::text('translatable[local_pickup_label]', trans('setting::attributes.translatable.local_pickup_label'), $errors, $settings, ['required' => true])); ?>

        <?php echo e(Form::number('local_pickup_cost', trans('setting::attributes.local_pickup_cost'), $errors, $settings, ['min' => 0, 'required' => true])); ?>

    </div>
</div>
<?php /**PATH C:\xampp_7.4.2\htdocs\sithimy\Modules/Setting/Resources/views/admin/settings/tabs/local_pickup.blade.php ENDPATH**/ ?>