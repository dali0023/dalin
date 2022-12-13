<x-app-layout>
    <div class="col-lg-8">
        <!-- featured post large -->
        <div class="post featured-post-lg">
            <div class="details clearfix">
                <a href="category.html" class="category-badge">Inspiration</a>
                <h2 class="post-title"><a href="">5 Easy Ways You Can Turn Future Into Success</a></h2>
                <ul class="meta list-inline mb-0">
                    <li class="list-inline-item"><a href="#">Katen Doe</a></li>
                    <li class="list-inline-item">29 March 2021</li>
                </ul>
            </div>
            <a href="{{ url('/') }}">
                <div class="thumb rounded">
                    <div class="inner data-bg-image" data-bg-image="{{ asset('/front/images/posts/featured-lg.jpg') }}">
                    </div>
                </div>
            </a>
        </div>
        <br>
        <br>
        <br>
        <!-- section header -->
        @include('front.partials.home.editors_pick')

        <!-- section header -->
        @include('front.partials.home.trending')



        <!-- section header -->
        <div class="section-header">
            <h3 class="section-title">Inspiration</h3>
            <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
            <div class="slick-arrows-top">
                <button type="button" data-role="none" class="carousel-topNav-prev slick-custom-buttons"
                    aria-label="Previous"><i class="icon-arrow-left"></i></button>
                <button type="button" data-role="none" class="carousel-topNav-next slick-custom-buttons"
                    aria-label="Next"><i class="icon-arrow-right"></i></button>
            </div>
        </div>

        <div class="row post-carousel-twoCol post-carousel">
            <!-- post -->
            <div class="post post-over-content col-md-6">
                <div class="details clearfix">
                    <a href="category.html" class="category-badge">Inspiration</a>
                    <h4 class="post-title"><a href="blog-single.html">Want To Have A More Appealing
                            Tattoo?</a></h4>
                    <ul class="meta list-inline mb-0">
                        <li class="list-inline-item"><a href="#">Katen Doe</a></li>
                        <li class="list-inline-item">29 March 2021</li>
                    </ul>
                </div>
                <a href="blog-single.html">
                    <div class="thumb rounded">
                        <div class="inner">
                            <img src="{{ asset('/front/images/posts/inspiration-1.jpg') }}" alt="thumb" />
                        </div>
                    </div>
                </a>
            </div>
            <!-- post -->
            <div class="post post-over-content col-md-6">
                <div class="details clearfix">
                    <a href="category.html" class="category-badge">Inspiration</a>
                    <h4 class="post-title"><a href="blog-single.html">Feel Like A Pro With The Help Of
                            These 7 Tips</a></h4>
                    <ul class="meta list-inline mb-0">
                        <li class="list-inline-item"><a href="#">Katen Doe</a></li>
                        <li class="list-inline-item">29 March 2021</li>
                    </ul>
                </div>
                <a href="blog-single.html">
                    <div class="thumb rounded">
                        <div class="inner">
                            <img src="{{ asset('/front/images/posts/inspiration-2.jpg') }}" alt="thumb" />
                        </div>
                    </div>
                </a>
            </div>
            <!-- post -->
            <div class="post post-over-content col-md-6">
                <div class="details clearfix">
                    <a href="category.html" class="category-badge">Inspiration</a>
                    <h4 class="post-title"><a href="blog-single.html">Your Light Is About To Stop
                            Being Relevant</a></h4>
                    <ul class="meta list-inline mb-0">
                        <li class="list-inline-item"><a href="#">Katen Doe</a></li>
                        <li class="list-inline-item">29 March 2021</li>
                    </ul>
                </div>
                <a href="blog-single.html">
                    <div class="thumb rounded">
                        <div class="inner">
                            <img src="{{ asset('/front/images/posts/inspiration-3.jpg') }}" alt="thumb" />
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <div class="spacer" data-height="50"></div>

        <!-- section header -->
        <div class="section-header">
            <h3 class="section-title">Latest Posts</h3>
            <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
        </div>

        <div class="padding-30 rounded bordered">

            <div class="row">

                <div class="col-md-12 col-sm-6">
                    <!-- post -->
                    <div class="post post-list clearfix">
                        <div class="thumb rounded">
                            <span class="post-format-sm">
                                <i class="icon-picture"></i>
                            </span>
                            <a href="blog-single.html">
                                <div class="inner">
                                    <img src="{{ asset('/front/images/posts/latest-sm-1.jpg') }}" alt="post-title" />
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <ul class="meta list-inline mb-3">
                                <li class="list-inline-item"><a href="#"><img
                                            src="{{ asset('/front/images/other/author-sm.png') }}" class="author"
                                            alt="author" />Katen Doe</a></li>
                                <li class="list-inline-item"><a href="#">Trending</a></li>
                                <li class="list-inline-item">29 March 2021</li>
                            </ul>
                            <h5 class="post-title"><a href="blog-single.html">The Next 60 Things To
                                    Immediately Do About Building</a></h5>
                            <p class="excerpt mb-0">A wonderful serenity has taken possession of my
                                entire soul, like these sweet mornings</p>
                            <div class="post-bottom clearfix d-flex align-items-center">
                                <div class="social-share me-auto">
                                    <button class="toggle-button icon-share"></button>
                                    <ul class="icons list-unstyled list-inline mb-0">
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-facebook-f"></i></a>
                                        </li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-twitter"></i></a>
                                        </li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-linkedin-in"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-pinterest"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-telegram-plane"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="far fa-envelope"></i></a></li>
                                    </ul>
                                </div>
                                <div class="more-button float-end">
                                    <a href="blog-single.html"><span class="icon-options"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 col-sm-6">
                    <!-- post -->
                    <div class="post post-list clearfix">
                        <div class="thumb rounded">
                            <a href="blog-single.html">
                                <div class="inner">
                                    <img src="{{ asset('/front/images/posts/latest-sm-2.jpg') }}" alt="post-title" />
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <ul class="meta list-inline mb-3">
                                <li class="list-inline-item"><a href="#"><img
                                            src="{{ asset('/front/images/other/author-sm.png') }}" class="author"
                                            alt="author" />Katen Doe</a></li>
                                <li class="list-inline-item"><a href="#">Lifestyle</a></li>
                                <li class="list-inline-item">29 March 2021</li>
                            </ul>
                            <h5 class="post-title"><a href="blog-single.html">Master The Art Of Nature
                                    With These 7 Tips</a></h5>
                            <p class="excerpt mb-0">A wonderful serenity has taken possession of my
                                entire soul, like these sweet mornings</p>
                            <div class="post-bottom clearfix d-flex align-items-center">
                                <div class="social-share me-auto">
                                    <button class="toggle-button icon-share"></button>
                                    <ul class="icons list-unstyled list-inline mb-0">
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-facebook-f"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-twitter"></i></a>
                                        </li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-linkedin-in"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-pinterest"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-telegram-plane"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="far fa-envelope"></i></a></li>
                                    </ul>
                                </div>
                                <div class="more-button float-end">
                                    <a href="blog-single.html"><span class="icon-options"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 col-sm-6">
                    <!-- post -->
                    <div class="post post-list clearfix">
                        <div class="thumb rounded">
                            <span class="post-format-sm">
                                <i class="icon-camrecorder"></i>
                            </span>
                            <a href="blog-single.html">
                                <div class="inner">
                                    <img src="{{ asset('/front/images/posts/latest-sm-3.jpg') }}" alt="post-title" />
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <ul class="meta list-inline mb-3">
                                <li class="list-inline-item"><a href="#"><img
                                            src="{{ asset('/front/images/other/author-sm.png') }}" class="author"
                                            alt="author" />Katen Doe</a></li>
                                <li class="list-inline-item"><a href="#">Fashion</a></li>
                                <li class="list-inline-item">29 March 2021</li>
                            </ul>
                            <h5 class="post-title"><a href="blog-single.html">Facts About Business
                                    That Will Help You Success</a></h5>
                            <p class="excerpt mb-0">A wonderful serenity has taken possession of my
                                entire soul, like these sweet mornings</p>
                            <div class="post-bottom clearfix d-flex align-items-center">
                                <div class="social-share me-auto">
                                    <button class="toggle-button icon-share"></button>
                                    <ul class="icons list-unstyled list-inline mb-0">
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-facebook-f"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-twitter"></i></a>
                                        </li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-linkedin-in"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-pinterest"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-telegram-plane"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="far fa-envelope"></i></a></li>
                                    </ul>
                                </div>
                                <div class="more-button float-end">
                                    <a href="blog-single.html"><span class="icon-options"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 col-sm-6">
                    <!-- post -->
                    <div class="post post-list clearfix">
                        <div class="thumb rounded">
                            <a href="blog-single.html">
                                <div class="inner">
                                    <img src="{{ asset('/front/images/posts/latest-sm-4.jpg') }}" alt="post-title" />
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <ul class="meta list-inline mb-3">
                                <li class="list-inline-item"><a href="#"><img
                                            src="{{ asset('/front/images/other/author-sm.png') }}" class="author"
                                            alt="author" />Katen Doe</a></li>
                                <li class="list-inline-item"><a href="#">Politic</a></li>
                                <li class="list-inline-item">29 March 2021</li>
                            </ul>
                            <h5 class="post-title"><a href="blog-single.html">Your Light Is About To
                                    Stop Being Relevant</a></h5>
                            <p class="excerpt mb-0">A wonderful serenity has taken possession of my
                                entire soul, like these sweet mornings</p>
                            <div class="post-bottom clearfix d-flex align-items-center">
                                <div class="social-share me-auto">
                                    <button class="toggle-button icon-share"></button>
                                    <ul class="icons list-unstyled list-inline mb-0">
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-facebook-f"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-twitter"></i></a>
                                        </li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-linkedin-in"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-pinterest"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="fab fa-telegram-plane"></i></a></li>
                                        <li class="list-inline-item"><a href="#"><i
                                                    class="far fa-envelope"></i></a></li>
                                    </ul>
                                </div>
                                <div class="more-button float-end">
                                    <a href="blog-single.html"><span class="icon-options"></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- load more button -->
            <div class="text-center">
                <button class="btn btn-simple">Load More</button>
            </div>

        </div>

    </div>
    <div class="col-lg-4">
        @include('layouts.front-includes-files.sidebar', [$tags, $categories])
    </div>




</x-app-layout>
