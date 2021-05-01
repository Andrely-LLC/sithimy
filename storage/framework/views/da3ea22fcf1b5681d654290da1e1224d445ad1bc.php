<ul class="sidebar-menu">
    <?php $__currentLoopData = $groups; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $group): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php echo $group; ?>

    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul>
<?php /**PATH C:\xampp_7.4.2\htdocs\sithimy\resources\views/vendor/sidebar/menu.blade.php ENDPATH**/ ?>