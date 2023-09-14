<div class="section-header">
    <h3 class="section-title">Travel</h3>
    <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
</div>

<div class="padding-30 rounded bordered">
    <div class="row gy-5">
        <div class="col-sm-6">
            <!-- post -->
            <div class="post">
                <div class="thumb rounded">
                    <a href="category.html" class="category-badge position-absolute">Lifestyle</a>
                    <a href="#">
                        <div class="inner">
                            <img src="{{ url('/media/' . $travelPost[0]->featured_image) }}"
                                alt="{{ $travelPost[0]->title }}" />
                        </div>
                    </a>
                </div>
                <ul class="meta list-inline mt-4 mb-0">
                    <li class="list-inline-item">
                        <a href="#">
                            <img src="https://www.pngfind.com/pngs/m/676-6764065_default-profile-picture-transparent-hd-png-download.png"
                                class="author"
                                style="height: 30px;width: 30px;border-radius: 50%;border: 1px solid rgb(161, 159, 159);"
                                alt="author" />
                            {{ $travelPost[0]->user->name}}
                        </a>
                    </li>
                    <li class="list-inline-item">{{ date('d F Y', strtotime($travelPost[0]->created_at)) }}</li>
                </ul>
                <h5 class="post-title mb-3 mt-3"><a href="{{ route('user.posts.show', $travelPost[0]->slug) }}">{{ $travelPost[0]->title }}</a></h5>

                <p class="excerpt mb-0" style="text-align: justify">
                    {!! \Illuminate\Support\Str::limit(strip_tags($travelPost[0]->content), $limit = 80, $end = '...') !!}
                </p>
            </div>
        </div>
        <div class="col-sm-6">
            <!-- post -->
            @foreach ($travelPost as $tPost)
                @if ($loop->iteration !== 1)
                    <div class="post post-list-sm square">
                        <div class="thumb rounded">
                            <a href="{{ route('user.posts.show', $tPost->slug) }}">
                                <div class="inner">
                                    <img src="{{ url('/media/' . $tPost->featured_image) }}"
                                        alt="{{ $tPost->title }}" />
                                </div>
                            </a>
                        </div>
                        <div class="details clearfix">
                            <h6 class="post-title my-0"><a href="{{route('user.posts.show', $tPost->slug)}}">{{ $tPost->title }}</a></h6>
                            <ul class="meta list-inline mt-1 mb-0">
                                <li class="list-inline-item">{{ date('d F Y', strtotime($tPost->created_at)) }}</li>
                            </ul>
                        </div>
                    </div>
                @endif
            @endforeach

        </div>
    </div>
</div>

<div class="spacer" data-height="50"></div>
