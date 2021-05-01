

<?php $__env->startSection('title', trans('translation::translations.translations')); ?>

<?php $__env->startComponent('admin::components.page.header'); ?>
    <?php $__env->slot('title', trans('translation::translations.translations')); ?>

    <li class="active"><?php echo e(trans('translation::translations.translations')); ?></li>
<?php if (isset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537)): ?>
<?php $component = $__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537; ?>
<?php unset($__componentOriginald1838d9cbc3e98f76d88606a9883c1cec482d537); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>

<?php $__env->startSection('content'); ?>
    <div class="box box-primary">
        <div class="box-body index-table">
            <table class="table table-hover translations-table">
                <thead>
                    <tr>
                        <th><?php echo e(trans('translation::translations.table.key')); ?></th>

                        <?php $__currentLoopData = supported_locales(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $locale => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <th><?php echo e($language['name']); ?></th>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tr>
                </thead>

                <tbody>
                    <?php $__currentLoopData = $translations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $translation): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e($key); ?></td>

                            <?php $__currentLoopData = supported_locales(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $locale => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <td class="translation-td">
                                    <a href="#" class="translation editable-click <?php echo e(array_has($translation, $locale) ? '' : 'editable-empty'); ?>"
                                        data-locale="<?php echo e($locale); ?>"
                                        data-key="<?php echo e($key); ?>"
                                    ><?php echo e(array_get($translation, $locale)); ?></a>
                                </td>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin::layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp_7.4.2\htdocs\sithimy\Modules/Translation/Resources/views/admin/translations/index.blade.php ENDPATH**/ ?>