

<?php $__env->startComponent('admin::components.page.header'); ?>
    <?php $__env->slot('title', trans('admin::resource.create', ['resource' => trans('flashsale::flash_sales.flash_sale')])); ?>

    <li><a href="<?php echo e(route('admin.flash_sales.index')); ?>"><?php echo e(trans('flashsale::flash_sales.flash_sales')); ?></a></li>
    <li class="active"><?php echo e(trans('admin::resource.create', ['resource' => trans('flashsale::flash_sales.flash_sale')])); ?></li>
<?php if (isset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537)): ?>
<?php $component = $__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537; ?>
<?php unset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>

<?php $__env->startSection('content'); ?>
    <form method="POST" action="<?php echo e(route('admin.flash_sales.store')); ?>" class="form-horizontal" id="flash-sale-create-form" novalidate>
        <?php echo e(csrf_field()); ?>


        <?php echo $tabs->render(compact('flashSale')); ?>

    </form>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('flashsale::admin.flash_sales.partials.shortcuts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php echo $__env->make('admin::layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp_7.4.2\htdocs\sithimy\Modules/FlashSale/Resources/views/admin/flash_sales/create.blade.php ENDPATH**/ ?>