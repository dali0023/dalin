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
            @foreach ($popular_post as $popularPost)
                <div class="post post-list-sm circle">
                    <div class="thumb circle">
                        <span class="number">{{ $popularPost->reads }}</span>
                        <a href="{{ route('user.posts.show', $popularPost->slug) }}">
                            <div class="inner">
                                <img src="{{ url('/media/' . $popularPost->featured_image) }}"
                                    style="height: 60px; width: 60px;border-radius: 61%; border: 1px solid #ff7272;"
                                    alt="{{ $popularPost->title }}" />
                            </div>
                        </a>
                    </div>
                    <div class="details clearfix">
                        <h6 class="post-title my-0"><a
                                href="{{ route('user.posts.show', $popularPost->slug) }}">{{ $popularPost->title }}</a>
                        </h6>
                        <ul class="meta list-inline mt-1 mb-0">
                            <li class="list-inline-item">{{ date('d F Y', strtotime($popularPost->created_at)) }}</li>
                        </ul>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

    @if (count($categories) > 0)
        <!-- widget categories -->
        <div class="widget rounded">
            <div class="widget-header text-center">
                <h3 class="widget-title">Explore Topics</h3>
                <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
            </div>
            <div class="widget-content">
                <ul class="list">
                    @foreach ($categories as $category)
                        @if ($category->post_count !== 0)
                            <li><a
                                    href="{{ route('user.categories.show', $category->slug) }}">{{ $category->title }}</a>
                                @if ($category->post_count !== 0)
                                    <span style="color:#ff5e7bf3">
                                        ({{ $category->post_count }})
                                    </span>
                                @else
                                    <span style="color:#ff5e7bf3">
                                        {{ 0 }}
                                    </span>
                                @endif
                            </li>
                        @endif
                    @endforeach
                </ul>
            </div>

        </div>

    @endif

    <!-- widget newsletter -->
    <div class="widget rounded">
        <div class="widget-header text-center">
            <h3 class="widget-title">Newsletter</h3>
            <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
        </div>
        <div class="widget-content">
            <span class="newsletter-headline text-center mb-3">Join 70,000 subscribers!</span>
            <form action="{{ url('/') }}" >
                <div class="mb-2">
                    <input class="form-control w-100 text-center" placeholder="Email address…" type="email">
                </div>
                <button class="btn btn-default btn-full" type="submit">Sign Up</button>
            </form>
            <span class="newsletter-privacy text-center mt-3">By signing up, you agree to our <a href="#">Privacy
                    Policy</a></span>
        </div>
    </div>


    @if (count($entertainment_post) > 0)

        <!-- widget post carousel -->
        <div class="widget rounded">
            <div class="widget-header text-center">
                <h3 class="widget-title">Celebration</h3>
                <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
            </div>
            <div class="widget-content">
                <div class="post-carousel-widget">
                    <!-- post -->
                    @foreach ($entertainment_post as $entertainmentPost)
                        <div class="post post-carousel">
                            <div class="thumb rounded">
                                <a href="{{ route('user.categories.show', $entertainmentPost->categories->title) }}"
                                    class="category-badge position-absolute">{{ $entertainmentPost->categories->title }}</a>
                                <a href="{{ route('user.posts.show', $entertainmentPost->slug) }}">
                                    <div class="inner">
                                        <img src="{{ url('/media/' . $entertainmentPost->featured_image) }}"
                                            alt="{{ $entertainmentPost->title }}" />
                                    </div>
                                </a>
                            </div>
                            <h5 class="post-title mb-0 mt-4"><a
                                    href="{{ route('user.posts.show', $entertainmentPost->slug) }}">{{ $entertainmentPost->title }}</a>
                            </h5>
                            <ul class="meta list-inline mt-2 mb-0">
                                <li class="list-inline-item"><a href="#">{{ $entertainmentPost->user->name }}</a>
                                </li>
                                <li class="list-inline-item">
                                    {{ date('d M Y', strtotime($entertainmentPost->created_at)) }}
                                </li>
                            </ul>
                        </div>
                    @endforeach
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
    @endif
    <!-- widget advertisement -->
    <div class="widget no-container rounded text-md-center">
        <span class="ads-title">- Sponsored Ad -</span>
        <a href="#" class="widget-ads">
            <img src="{{ asset('/front/images/ads/ad-361.png') }}" alt="Advertisement" />
        </a>
    </div>

    @if (count($tags) > 0)
        <div class="widget rounded">
            <div class="widget-header text-center">
                <h3 class="widget-title">Tag Clouds</h3>
                <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
            </div>
            <div class="widget-content">
                @foreach ($tags as $tag)
                    @if ($tag->post_count !== 0)
                        <a href="{{ route('user.tags.show', $tag->slug) }}" class="tag">#{{ $tag->title }}
                            <span class="badge"
                                style="background: linear-gradient(to right, #FE4F70 0%, #FFA387 100%)">{{ $tag->post_count }}</span></a>
                    @endif
                @endforeach
            </div>
        </div>
    @endif
    <!-- widget tags -->


</div>
