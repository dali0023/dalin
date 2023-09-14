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

    @foreach ($featuredPost as $fPost)
        @if ($loop->iteration !== 1)
            <div class="post post-over-content col-md-6">
                <div class="details clearfix">
                    <a href="{{ route('user.categories.show', $fPost->categories->slug) }}"
                        class="category-badge">{{ $fPost->categories->title }}</a>
                    <h4 class="post-title" style="font-size: 14px"><a
                            href="{{ route('user.posts.show', $fPost->slug) }}">{{ $fPost->title }}</a></h4>
                    <ul class="meta list-inline mb-0">
                        <li class="list-inline-item"><a href="#">{{ $fPost->user->name }}</a></li>
                        <li class="list-inline-item">{{ date('d F Y', strtotime($fPost->created_at)) }}</li>
                    </ul>
                </div>
                <a href="{{ route('user.posts.show', $fPost->slug) }}">
                    <div class="thumb rounded">
                        <div class="inner">
                            <img src="{{ url('/media/' . $fPost->featured_image) }}" alt="thumb"
                                style="height:280px" />
                        </div>
                    </div>
                </a>
            </div>
        @endif
    @endforeach
</div>
<div class="spacer" data-height="50"></div>