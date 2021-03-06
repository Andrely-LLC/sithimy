<div class="slide-options call-to-action">
    <h4><?php echo e(trans("slider::sliders.slide.form.call_to_action")); ?></h4>

    <div class="form-group">
        <div class="col-md-12 p-l-0">
            <label class="control-label col-lg-2 col-md-3 col-sm-3 col-xs-12 text-left p-l-0" for="call-to-action-delay">
                <?php echo e(trans("slider::attributes.call_to_action_delay")); ?>

            </label>

            <div class="col-lg-4 col-md-7 col-sm-6 col-xs-7 p-l-0">
                <input type="number"
                    name="slides[<%- slideNumber %>][options][call_to_action][delay]"
                    class="form-control"
                    id="call-to-action-delay"
                    placeholder="<?php echo e(trans('slider::sliders.slide.form.0_7s')); ?>"
                    value="<%- slide.options.call_to_action.delay %>"
                    step="0.01"
                >
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="col-md-12 p-l-0">
            <label class="control-label col-lg-2 col-md-3 col-sm-3 col-xs-12 text-left p-l-0" for="call-to-action-effect">
                <?php echo e(trans("slider::attributes.call_to_action_effect")); ?>

            </label>

            <div class="col-lg-4 col-md-7 col-sm-6 col-xs-7 p-l-0">
                <select name="slides[<%- slideNumber %>][options][call_to_action][effect]"
                    class="form-control custom-select-black"
                    id="call-to-action-effect"
                >
                    <?php $__currentLoopData = trans('slider::sliders.effects'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $effect => $name): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($effect); ?>" <%= slide.options.call_to_action.effect === '<?php echo e($effect); ?>' ? 'selected' : '' %>>
                            <?php echo e($name); ?>

                        </option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>
        </div>
    </div>
</div>
<?php /**PATH /Users/nnhshu/workspace/sithimy/Modules/Slider/Resources/views/admin/sliders/templates/partials/slide_call_to_action.blade.php ENDPATH**/ ?>