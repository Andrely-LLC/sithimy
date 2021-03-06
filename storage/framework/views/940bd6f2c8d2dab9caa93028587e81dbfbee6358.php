<?php $__env->startSection('title', trans('admin::resource.edit', ['resource' => trans('user::users.profile')])); ?>

<?php $__env->startComponent('admin::components.page.header'); ?>
    <?php $__env->slot('title', trans('admin::resource.edit', ['resource' => trans('user::users.profile')])); ?>

    <li class="active"><?php echo e(trans('admin::resource.edit', ['resource' => trans('user::users.profile')])); ?></li>
<?php if (isset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537)): ?>
<?php $component = $__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537; ?>
<?php unset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>

<?php $__env->startSection('content'); ?>
    <form method="POST" action="<?php echo e(route('admin.profile.update')); ?>" class="form-horizontal" id="profile-form" novalidate>
        <?php echo e(csrf_field()); ?>

        <?php echo e(method_field('put')); ?>


        <?php echo $tabs->render(); ?>

    </form>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin::layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/nnhshu/workspace/sithimy/Modules/User/Resources/views/admin/profile/edit.blade.php ENDPATH**/ ?>