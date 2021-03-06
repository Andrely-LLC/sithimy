<?php $__env->startComponent('admin::components.page.header'); ?>
    <?php $__env->slot('title', trans('user::users.users')); ?>

    <li class="active"><?php echo e(trans('user::users.users')); ?></li>
<?php if (isset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537)): ?>
<?php $component = $__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537; ?>
<?php unset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>

<?php $__env->startComponent('admin::components.page.index_table'); ?>
    <?php $__env->slot('buttons', ['create']); ?>
    <?php $__env->slot('resource', 'users'); ?>
    <?php $__env->slot('name', trans('user::users.user')); ?>

    <?php $__env->slot('thead'); ?>
        <tr>
            <?php echo $__env->make('admin::partials.table.select_all', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            <th><?php echo e(trans('admin::admin.table.id')); ?></th>
            <th><?php echo e(trans('user::users.table.first_name')); ?></th>
            <th><?php echo e(trans('user::users.table.last_name')); ?></th>
            <th><?php echo e(trans('user::users.table.email')); ?></th>
            <th><?php echo e(trans('user::users.table.last_login')); ?></th>
            <th data-sort><?php echo e(trans('admin::admin.table.created')); ?></th>
        </tr>
    <?php $__env->endSlot(); ?>
<?php if (isset($__componentOriginalc2e763454f271710e588c202de697a849434b70e)): ?>
<?php $component = $__componentOriginalc2e763454f271710e588c202de697a849434b70e; ?>
<?php unset($__componentOriginalc2e763454f271710e588c202de697a849434b70e); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>

<?php $__env->startPush('scripts'); ?>
    <script>
        new DataTable('#users-table .table', {
            columns: [
                { data: 'checkbox', orderable: false, searchable: false, width: '3%' },
                { data: 'id', width: '5%' },
                { data: 'first_name', name: 'first_name' },
                { data: 'last_name', name: 'last_name' },
                { data: 'email', name: 'email' },
                { data: 'last_login', name: 'last_login', searchable: false },
                { data: 'created', name: 'created_at' },
            ]
        });
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('admin::layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/nnhshu/workspace/sithimy/Modules/User/Resources/views/admin/users/index.blade.php ENDPATH**/ ?>