<!DOCTYPE html>
<html lang="{{ locale() }}">
    <head>
        <base href="{{ config('app.url') }}">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

        <title>
            @hasSection('title')
                @yield('title') - {{ setting('store_name') }}
            @else
                {{ setting('store_name') }}
            @endif
        </title>

        @stack('meta')

        <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500&display=swap" rel="stylesheet">

        @if (is_rtl())
            <link rel="stylesheet" href="{{ v(Theme::url('public/css/app.rtl.css')) }}">
        @else
            <link rel="stylesheet" href="{{ v(Theme::url('public/css/app.css')) }}">
            <link rel="stylesheet" href="{{ v(Theme::url('public/css/style.css')) }}">
        @endif

        <link rel="shortcut icon" href="{{ $favicon }}" type="image/x-icon">

        @stack('styles')

        {!! setting('custom_header_assets') !!}

        <style>
            .hotline-phone-ring-wrap {
                position: fixed;
                bottom: -20px;
                left: 10px;
                z-index: 999999;
            }
            .hotline-phone-ring {
                position: relative;
                visibility: visible;
                background-color: transparent;
                width: 110px;
                height: 110px;
                cursor: pointer;
                z-index: 11;
                -webkit-backface-visibility: hidden;
                -webkit-transform: translateZ(0);
                transition: visibility .5s;
                left: 0;
                bottom: 0;
                display: block;
            }
            .hotline-phone-ring-circle {
                width: 85px;
                height: 85px;
                top: 10px;
                left: 10px;
                position: absolute;
                background-color: transparent;
                border-radius: 100%;
                border: 2px solid #0267e1;
                -webkit-animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
                animation: phonering-alo-circle-anim 1.2s infinite ease-in-out;
                transition: all .5s;
                -webkit-transform-origin: 50% 50%;
                -ms-transform-origin: 50% 50%;
                transform-origin: 50% 50%;
                opacity: 0.5;
            }
            .hotline-phone-ring-circle-fill {
                width: 55px;
                height: 55px;
                top: 25px;
                left: 25px;
                position: absolute;
                background-color: rgb(2 103 225);
                border-radius: 100%;
                border: 2px solid transparent;
                -webkit-animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
                animation: phonering-alo-circle-fill-anim 2.3s infinite ease-in-out;
                transition: all .5s;
                -webkit-transform-origin: 50% 50%;
                -ms-transform-origin: 50% 50%;
                transform-origin: 50% 50%;
            }
            .hotline-phone-ring-img-circle {
                background-color: #0267e1;
                width: 33px;
                height: 33px;
                top: 37px;
                left: 37px;
                position: absolute;
                background-size: 20px;
                border-radius: 100%;
                border: 2px solid transparent;
                -webkit-animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
                animation: phonering-alo-circle-img-anim 1s infinite ease-in-out;
                -webkit-transform-origin: 50% 50%;
                -ms-transform-origin: 50% 50%;
                transform-origin: 50% 50%;
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .hotline-phone-ring-img-circle i {
                color: #fff;
            }
            .hotline-phone-ring-img-circle .pps-btn-img {
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
            }
            .hotline-bar {
                position: absolute;
                background: rgb(2 103 225);
                height: 40px;
                width: 160px;
                line-height: 40px;
                border-radius: 3px;
                padding: 0 10px;
                background-size: 100%;
                cursor: pointer;
                transition: all 0.8s;
                -webkit-transition: all 0.8s;
                z-index: 9;
                box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.1);
                border-radius: 50px !important;
                left: 33px;
                bottom: 37px;
            }
            .hotline-bar > a {
                color: #fff;
                text-decoration: none;
                font-size: 15px;
                font-weight: bold;
                text-indent: 35px;
                display: block;
                letter-spacing: 1px;
                line-height: 40px;
                font-family: Arial;
            }
            .hotline-bar > a:hover,
            .hotline-bar > a:active {
                color: #fff;
            }
            @-webkit-keyframes phonering-alo-circle-anim {
                0% {
                    -webkit-transform: rotate(0) scale(0.5) skew(1deg);
                    -webkit-opacity: 0.1;
                }
                30% {
                    -webkit-transform: rotate(0) scale(0.7) skew(1deg);
                    -webkit-opacity: 0.5;
                }
                100% {
                    -webkit-transform: rotate(0) scale(1) skew(1deg);
                    -webkit-opacity: 0.1;
                }
            }
            @-webkit-keyframes phonering-alo-circle-fill-anim {
                0% {
                    -webkit-transform: rotate(0) scale(0.7) skew(1deg);
                    opacity: 0.6;
                }
                50% {
                    -webkit-transform: rotate(0) scale(1) skew(1deg);
                    opacity: 0.6;
                }
                100% {
                    -webkit-transform: rotate(0) scale(0.7) skew(1deg);
                    opacity: 0.6;
                }
            }
            @-webkit-keyframes phonering-alo-circle-img-anim {
                0% {
                    -webkit-transform: rotate(0) scale(1) skew(1deg);
                }
                10% {
                    -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
                }
                20% {
                    -webkit-transform: rotate(25deg) scale(1) skew(1deg);
                }
                30% {
                    -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
                }
                40% {
                    -webkit-transform: rotate(25deg) scale(1) skew(1deg);
                }
                50% {
                    -webkit-transform: rotate(0) scale(1) skew(1deg);
                }
                100% {
                    -webkit-transform: rotate(0) scale(1) skew(1deg);
                }
            }
            @media (max-width: 768px) {
                .hotline-bar {
                    display: none;
                }
                .hotline-phone-ring-wrap {
                    bottom: -13px;
                    right: 89px;
                }
            }
        </style>

        <script>
            window.FleetCart = {
                baseUrl: '{{ config("app.url") }}',
                rtl: {{ is_rtl() ? 'true' : 'false' }},
                storeName: '{{ setting("store_name") }}',
                storeLogo: '{{ $logo }}',
                loggedIn: {{ auth()->check() ? 'true' : 'false' }},
                csrfToken: '{{ csrf_token() }}',
                stripePublishableKey: '{{ setting("stripe_publishable_key") }}',
                razorpayKeyId: '{{ setting("razorpay_key_id") }}',
                cart: {!! $cart !!},
                wishlist: {!! $wishlist !!},
                compareList: {!! $compareList !!},
                langs: {
                    'storefront::layout.next': '{{ trans("storefront::layout.next") }}',
                    'storefront::layout.prev': '{{ trans("storefront::layout.prev") }}',
                    'storefront::layout.search_for_products': '{{ trans("storefront::layout.search_for_products") }}',
                    'storefront::layout.all_categories': '{{ trans("storefront::layout.all_categories") }}',
                    'storefront::layout.most_searched': '{{ trans("storefront::layout.most_searched") }}',
                    'storefront::layout.search_for_products': '{{ trans("storefront::layout.search_for_products") }}',
                    'storefront::layout.category_suggestions': '{{ trans("storefront::layout.category_suggestions") }}',
                    'storefront::layout.product_suggestions': '{{ trans("storefront::layout.product_suggestions") }}',
                    'storefront::layout.product_suggestions': '{{ trans("storefront::layout.product_suggestions") }}',
                    'storefront::layout.more_results': '{{ trans("storefront::layout.more_results") }}',
                    'storefront::product_card.out_of_stock': '{{ trans("storefront::product_card.out_of_stock") }}',
                    'storefront::product_card.new': '{{ trans("storefront::product_card.new") }}',
                    'storefront::product_card.add_to_cart': '{{ trans("storefront::product_card.add_to_cart") }}',
                    'storefront::product_card.view_options': '{{ trans("storefront::product_card.view_options") }}',
                    'storefront::product_card.compare': '{{ trans("storefront::product_card.compare") }}',
                    'storefront::product_card.wishlist': '{{ trans("storefront::product_card.wishlist") }}',
                    'storefront::product_card.available': '{{ trans("storefront::product_card.available") }}',
                    'storefront::product_card.sold': '{{ trans("storefront::product_card.sold") }}',
                    'storefront::product_card.years': '{{ trans("storefront::product_card.years") }}',
                    'storefront::product_card.months': '{{ trans("storefront::product_card.months") }}',
                    'storefront::product_card.weeks': '{{ trans("storefront::product_card.weeks") }}',
                    'storefront::product_card.days': '{{ trans("storefront::product_card.days") }}',
                    'storefront::product_card.hours': '{{ trans("storefront::product_card.hours") }}',
                    'storefront::product_card.minutes': '{{ trans("storefront::product_card.minutes") }}',
                    'storefront::product_card.seconds': '{{ trans("storefront::product_card.seconds") }}',
                },
            };
        </script>

        {!! $schemaMarkup->toScript() !!}

        @stack('globals')

        @routes
    </head>

    <body
        class="page-template {{ is_rtl() ? 'rtl' : 'ltr' }}"
        data-theme-color="#{{ $themeColor->getHex() }}"
        style="--color-primary: #{{ $themeColor->getHex() }};
            --color-primary-hover: #{{ $themeColor->darken(8) }};
            --color-primary-transparent: {{ color2rgba($themeColor, 0.8) }};
            --color-primary-transparent-lite: {{ color2rgba($themeColor, 0.3) }};"
    >
        <div class="wrapper" id="app">
            @include('public.layout.top_nav')
            @include('public.layout.header')
            @include('public.layout.navigation')
            @include('public.layout.breadcrumb')

            @yield('content')

            @include('public.home.sections.subscribe')
            @include('public.layout.footer')

            <div class="overlay"></div>

            @include('public.layout.sidebar_menu')
            @include('public.layout.sidebar_cart')
            @include('public.layout.alert')
            @include('public.layout.newsletter_popup')
            @include('public.layout.cookie_bar')
        </div>

        @stack('pre-scripts')

        <script src="{{ v(Theme::url('public/js/app.js')) }}"></script>

        @stack('scripts')

        {!! setting('custom_footer_assets') !!}

        <!-- hotline custom -->
        <div class="hotline-phone-ring-wrap">
            <div class="hotline-phone-ring">
                <div class="hotline-phone-ring-circle"></div>
                <div class="hotline-phone-ring-circle-fill"></div>
                <div class="hotline-phone-ring-img-circle">
                    <a href="tel:0905478561" class="pps-btn-img">
                        <i class="las la-phone"></i>
                    </a>
                </div>
            </div> 
            <div class="hotline-bar">
                <a href="tel:0905478561"></a>
                <a href="tel:0905478561">
                    <span class="text-hotline">0905478561</span>
                </a>
            </div>
        </div>
        <!-- end hotline custom -->
    </body>
</html>
