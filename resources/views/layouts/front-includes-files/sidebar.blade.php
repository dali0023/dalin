<!-- sidebar -->
<div class="sidebar">
    <!-- widget popular posts -->
    <div class="widget rounded">
        <div class="widget-header text-center">
            <h3 class="widget-title">Popular Posts</h3>
            <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
        </div>
        <div class="widget-content">
            <!-- post -->
            <div class="post post-list-sm circle">
                <div class="thumb circle">
                    <span class="number">1</span>
                    <a href="blog-single.html">
                        <div class="inner">
                            <img src="{{ asset('/front/images/posts/tabs-1.jpg') }}" alt="post-title" />
                        </div>
                    </a>
                </div>
                <div class="details clearfix">
                    <h6 class="post-title my-0"><a href="blog-single.html">3 Easy Ways To Make Your iPhone Faster</a>
                    </h6>
                    <ul class="meta list-inline mt-1 mb-0">
                        <li class="list-inline-item">29 March 2021</li>
                    </ul>
                </div>
            </div>
            <!-- post -->
            <div class="post post-list-sm circle">
                <div class="thumb circle">
                    <span class="number">2</span>
                    <a href="blog-single.html">
                        <div class="inner">
                            <img src="{{ asset('/front/images/posts/tabs-2.jpg') }}" alt="post-title" />
                        </div>
                    </a>
                </div>
                <div class="details clearfix">
                    <h6 class="post-title my-0"><a href="blog-single.html">An Incredibly Easy Method That Works For
                            All</a></h6>
                    <ul class="meta list-inline mt-1 mb-0">
                        <li class="list-inline-item">29 March 2021</li>
                    </ul>
                </div>
            </div>
            <!-- post -->
            <div class="post post-list-sm circle">
                <div class="thumb circle">
                    <span class="number">3</span>
                    <a href="blog-single.html">
                        <div class="inner">
                            <img src="{{ asset('/front/images/posts/tabs-3.jpg') }}" alt="post-title" />
                        </div>
                    </a>
                </div>
                <div class="details clearfix">
                    <h6 class="post-title my-0"><a href="blog-single.html">10 Ways To Immediately Start Selling
                            Furniture</a></h6>
                    <ul class="meta list-inline mt-1 mb-0">
                        <li class="list-inline-item">29 March 2021</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- widget categories -->
    <div class="widget rounded">
        <div class="widget-header text-center">
            <h3 class="widget-title">Explore Topics</h3>
            <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
        </div>
        <div class="widget-content">
            <ul class="list">
                @foreach ($categories as $category)
                    <li><a href="{{ route('user.categories.show', $category->slug) }}">{{ $category->title }}</a><span>(2)</span></li>
                @endforeach
            </ul>
        </div>

    </div>

    <!-- widget newsletter -->
    <div class="widget rounded">
        <div class="widget-header text-center">
            <h3 class="widget-title">Newsletter</h3>
            <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
        </div>
        <div class="widget-content">
            <span class="newsletter-headline text-center mb-3">Join 70,000 subscribers!</span>
            <form>
                <div class="mb-2">
                    <input class="form-control w-100 text-center" placeholder="Email address…" type="email">
                </div>
                <button class="btn btn-default btn-full" type="submit">Sign Up</button>
            </form>
            <span class="newsletter-privacy text-center mt-3">By signing up, you agree to our <a href="#">Privacy
                    Policy</a></span>
        </div>
    </div>

    <!-- widget post carousel -->
    <div class="widget rounded">
        <div class="widget-header text-center">
            <h3 class="widget-title">Celebration</h3>
            <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
        </div>
        <div class="widget-content">
            <div class="post-carousel-widget">
                <!-- post -->
                <div class="post post-carousel">
                    <div class="thumb rounded">
                        <a href="category.html" class="category-badge position-absolute">How to</a>
                        <a href="blog-single.html">
                            <div class="inner">
                                <img src="{{ asset('/front/images/widgets/widget-carousel-1.jpg') }}"
                                    alt="post-title" />
                            </div>
                        </a>
                    </div>
                    <h5 class="post-title mb-0 mt-4"><a href="blog-single.html">5 Easy Ways You Can Turn Future Into
                            Success</a></h5>
                    <ul class="meta list-inline mt-2 mb-0">
                        <li class="list-inline-item"><a href="#">Katen Doe</a></li>
                        <li class="list-inline-item">29 March 2021</li>
                    </ul>
                </div>
                <!-- post -->
                <div class="post post-carousel">
                    <div class="thumb rounded">
                        <a href="category.html" class="category-badge position-absolute">Trending</a>
                        <a href="blog-single.html">
                            <div class="inner">
                                <img src="{{ asset('/front/images/widgets/widget-carousel-2.jpg') }}"
                                    alt="post-title" />
                            </div>
                        </a>
                    </div>
                    <h5 class="post-title mb-0 mt-4"><a href="blog-single.html">Master The Art Of Nature With These 7
                            Tips</a></h5>
                    <ul class="meta list-inline mt-2 mb-0">
                        <li class="list-inline-item"><a href="#">Katen Doe</a></li>
                        <li class="list-inline-item">29 March 2021</li>
                    </ul>
                </div>
                <!-- post -->
                <div class="post post-carousel">
                    <div class="thumb rounded">
                        <a href="category.html" class="category-badge position-absolute">How to</a>
                        <a href="blog-single.html">
                            <div class="inner">
                                <img src="{{ asset('/front/images/widgets/widget-carousel-1.jpg') }}"
                                    alt="post-title" />
                            </div>
                        </a>
                    </div>
                    <h5 class="post-title mb-0 mt-4"><a href="blog-single.html">5 Easy Ways You Can Turn Future Into
                            Success</a></h5>
                    <ul class="meta list-inline mt-2 mb-0">
                        <li class="list-inline-item"><a href="#">Katen Doe</a></li>
                        <li class="list-inline-item">29 March 2021</li>
                    </ul>
                </div>
            </div>
            <!-- carousel arrows -->
            <div class="slick-arrows-bot">
                <button type="button" data-role="none" class="carousel-botNav-prev slick-custom-buttons"
                    aria-label="Previous"><i class="icon-arrow-left"></i></button>
                <button type="button" data-role="none" class="carousel-botNav-next slick-custom-buttons"
                    aria-label="Next"><i class="icon-arrow-right"></i></button>
            </div>
        </div>
    </div>

    <!-- widget advertisement -->
    <div class="widget no-container rounded text-md-center">
        <span class="ads-title">- Sponsored Ad -</span>
        <a href="#" class="widget-ads">
            <img src="{{ asset('/front/images/ads/ad-360.png') }}" alt="Advertisement" />
        </a>
    </div>

    <!-- widget tags -->
    <div class="widget rounded">
        <div class="widget-header text-center">
            <h3 class="widget-title">Tag Clouds</h3>
            <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
        </div>
        <div class="widget-content">
            @foreach ($tags as $tag)
            {{-- <a href="{{ route('tags.show', $tag->id)}}" class="tag">#{{ $tag->title }}</a> --}}
            <a href="{{ route('user.tags.show', $tag->slug) }}" class="tag">#{{ $tag->title }}</a>
        @endforeach
            {{-- <a href="#" class="tag">#Trending</a>
            <a href="#" class="tag">#Video</a>
            <a href="#" class="tag">#Featured</a>
            <a href="#" class="tag">#Gallery</a>
            <a href="#" class="tag">#Celebrities</a> --}}
        </div>
    </div>

</div>
