{{ Form::text('amazon_key', trans('setting::attributes.amazon_key'), $errors, $settings, ['required' => true]) }}
{{ Form::password('amazon_secret', trans('setting::attributes.amazon_secret'), $errors, $settings, ['required' => true]) }}
