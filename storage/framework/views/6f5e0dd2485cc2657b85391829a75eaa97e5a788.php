<?php $__env->startPush('globals'); ?>
    <script>
        FleetCart.selectize.push({
            load: function (query, callback) {
                var url = this.$input.data('url');

                if (url === undefined || query.length === 0) {
                    return callback();
                }

                $.get(url + '?query=' + query, callback, 'json');
            }
        });
    </script>
<?php $__env->stopPush(); ?>
<?php /**PATH C:\xampp_7.4.2\htdocs\sithimy\Modules/Admin/Resources/views/partials/selectize_remote.blade.php ENDPATH**/ ?>