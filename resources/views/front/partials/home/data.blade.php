@foreach ($latest_post as $latestPost)
    <div class="col-md-12 col-sm-6">
        <!-- post -->

        <div class="post post-list clearfix">
            <div class="thumb rounded">
                <a href="#">
                    <div class="inner">
                        <img src="{{ url('/media/' . $latestPost->featured_image) }}" alt="{{ $latestPost->title }}" />
                    </div>
                </a>
            </div>
            <div class="details">
                <ul class="meta list-inline mb-3">
                    <li class="list-inline-item">
                        <a href="#">
                            <img src="https://www.pngfind.com/pngs/m/676-6764065_default-profile-picture-transparent-hd-png-download.png"
                                class="author"
                                style="height: 30px;width: 30px;border-radius: 50%;border: 1px solid rgb(161, 159, 159);"
                                alt="author" />
                            {{ strtok($latestPost->user->name, " ") }}

                        </a>
                    </li>
                    <li class="list-inline-item"><a
                            href="{{ route('user.categories.show', $latestPost->categories->slug) }}">
                            {{ $latestPost->categories->title }}</a>
                    </li>
                    <li class="list-inline-item">{{ date('d M Y', strtotime($latestPost->created_at)) }}</li>
                </ul>
                <h5 class="post-title">
                    <a href="{{ route('user.posts.show', $latestPost->slug) }}">{{ $latestPost->title }}</a>
                </h5>
                <p class="excerpt mb-0" style="text-align: justify">
                   {!! \Illuminate\Support\Str::limit(strip_tags($latestPost->content), $limit = 80, $end = '...') !!}
                </p>
            </div>
        </div>
    </div>
@endforeach
