<section class="navigation-wrap">
    <div class="container">
        <div class="navigation-inner">
            <?php echo $__env->make('public.layout.navigation.category_menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <?php echo $__env->make('public.layout.navigation.primary_menu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

            <span class="navigation-text">
                <?php echo e(setting('storefront_navbar_text')); ?>

            </span>
        </div>
    </div>
</section>
<?php /**PATH C:\xampp_7.4.2\htdocs\sithimy\Themes\Storefront\views/public/layout/navigation.blade.php ENDPATH**/ ?>