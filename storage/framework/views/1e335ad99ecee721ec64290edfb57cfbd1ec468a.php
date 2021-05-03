<?php $__env->startComponent('admin::components.page.header'); ?>
    <?php $__env->slot('title', trans('admin::resource.create', ['resource' => trans('page::pages.page')])); ?>

    <li><a href="<?php echo e(route('admin.pages.index')); ?>"><?php echo e(trans('page::pages.pages')); ?></a></li>
    <li class="active"><?php echo e(trans('admin::resource.create', ['resource' => trans('page::pages.page')])); ?></li>
<?php if (isset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537)): ?>
<?php $component = $__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537; ?>
<?php unset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>

<?php $__env->startSection('content'); ?>
    <form method="POST" action="<?php echo e(route('admin.pages.store')); ?>" class="form-horizontal" id="page-create-form" novalidate>
        <?php echo e(csrf_field()); ?>


        <?php echo $tabs->render(compact('page')); ?>

    </form>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('page::admin.pages.partials.shortcuts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php echo $__env->make('admin::layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/nnhshu/workspace/sithimy/Modules/Page/Resources/views/admin/pages/create.blade.php ENDPATH**/ ?>