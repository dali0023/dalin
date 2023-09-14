<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap">
    <title>Dalin - @yield('title')</title>
    <meta name="description" content="Dalin - @yield('title')">
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('/front/images/favicon.png') }}">

    <!-- STYLES -->
    <link rel="stylesheet" href="{{ asset('/front/css/bootstrap.min.css') }}" type="text/css" media="all">
    <link rel="stylesheet" href="{{ asset('/front/css/all.min.css') }}" type="text/css" media="all">
    <link rel="stylesheet" href="{{ asset('/front/css/slick.css') }}" type="text/css" media="all">
    <link rel="stylesheet" href="{{ asset('/front/css/simple-line-icons.css') }}" type="text/css" media="all">
    <link rel="stylesheet" href="{{ asset('/front/css/style.css') }}" type="text/css" media="all">
</head>

<body class="font-sans antialiased">

    <!-- site wrapper -->
    <div class="site-wrapper">

        <div class="main-overlay"></div>

        <!-- header -->
        @include('layouts.front-includes-files.header')
        @yield('page_header')
        <!-- section main content -->
        <section class="main-content">
            <div class="container-xl">
                <div class="row gy-4">
                    {{ $slot }}
                </div>

            </div>
        </section>

        <!-- footer -->
        @include('layouts.front-includes-files.footer')


    </div><!-- end site wrapper -->

    <!-- search popup area -->
    <div class="search-popup">
        <!-- close button -->
        <button type="button" class="btn-close" aria-label="Close"></button>
        <!-- content -->

        @include('layouts.front-includes-files.search_popup_area')

    </div>

    <!-- canvas menu -->
    <div class="canvas-menu d-flex align-items-end flex-column">
        <!-- close button -->
        <button type="button" class="btn-close" aria-label="Close"></button>

        @include('layouts.front-includes-files.canvas_menu')
    </div>



    <!-- JAVA SCRIPTS -->
    <script src="{{ asset('/front/js/jquery.min.js') }}"></script>
    <script src="{{ asset('/front/js/popper.min.js') }}"></script>
    <script src="{{ asset('/front/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('/front/js/slick.min.js') }}"></script>
    <script src="{{ asset('/front/js/jquery.sticky-sidebar.min.js') }}"></script>
    <script src="{{ asset('/front/js/custom.js') }}"></script>
    @yield('script')
</body>

</html>
