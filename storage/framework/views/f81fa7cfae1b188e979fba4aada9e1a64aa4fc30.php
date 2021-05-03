<div class="table-responsive">
    <table class="table table-striped table-hover <?php echo e($class ?? ''); ?>" id="<?php echo e($id ?? ''); ?>">
        <thead><?php echo e($thead); ?></thead>

        <tbody><?php echo e($slot); ?></tbody>

        <?php if(isset($tfoot)): ?>
            <tfoot><?php echo e($tfoot); ?></tfoot>
        <?php endif; ?>
    </table>
</div>
<?php /**PATH /Users/nnhshu/workspace/sithimy/Modules/Admin/Resources/views/components/table.blade.php ENDPATH**/ ?>