

<?php $__env->startComponent('admin::components.page.header'); ?>
    <?php $__env->slot('title', trans('order::orders.orders')); ?>

    <li class="active"><?php echo e(trans('order::orders.orders')); ?></li>
<?php if (isset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537)): ?>
<?php $component = $__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537; ?>
<?php unset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>

<?php $__env->startSection('content'); ?>
    <div class="box box-primary">
        <div class="box-body index-table" id="orders-table">
            <?php $__env->startComponent('admin::components.table'); ?>
                <?php $__env->slot('thead'); ?>
                    <tr>
                        <th><?php echo e(trans('admin::admin.table.id')); ?></th>
                        <th><?php echo e(trans('order::orders.table.customer_name')); ?></th>
                        <th><?php echo e(trans('order::orders.table.customer_email')); ?></th>
                        <th><?php echo e(trans('admin::admin.table.status')); ?></th>
                        <th><?php echo e(trans('order::orders.table.total')); ?></th>
                        <th data-sort><?php echo e(trans('admin::admin.table.created')); ?></th>
                    </tr>
                <?php $__env->endSlot(); ?>
            <?php if (isset($__componentOriginaldee888a357ec29c71597049b25b353da45b3a06e)): ?>
<?php $component = $__componentOriginaldee888a357ec29c71597049b25b353da45b3a06e; ?>
<?php unset($__componentOriginaldee888a357ec29c71597049b25b353da45b3a06e); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
    <script>
        DataTable.setRoutes('#orders-table .table', {
            index: '<?php echo e("admin.orders.index"); ?>',
            show: '<?php echo e("admin.orders.show"); ?>',
        });

        new DataTable('#orders-table .table', {
            columns: [
                { data: 'id', width: '5%' },
                { data: 'customer_name', orderable: false, searchable: false },
                { data: 'customer_email' },
                { data: 'status' },
                { data: 'total' },
                { data: 'created', name: 'created_at' },
            ],
        });
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin::layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp_7.4.2\htdocs\sithimy\Modules/Order/Resources/views/admin/orders/index.blade.php ENDPATH**/ ?>