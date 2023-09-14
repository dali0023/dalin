<x-app-layout>
    <div class="col-lg-8">
        <!-- featured post large -->
        @if (count($featuredPost) > 0)
            <div class="post featured-post-lg">
                <div class="details clearfix">
                    <a href="{{ route('user.categories.show', $all_category_posts->title) }}" class="category-badge">{{ strip_tags($all_category_posts->title) }}</a>
                    <h2 class="post-title">
                        <a href="{{route('user.posts.show',$featuredPost[0]->slug) }}">{{ strip_tags($featuredPost[0]->title) }}</a>
                    </h2>
                    <ul class="meta list-inline mb-0">
                        <li class="list-inline-item"><a href="#">{{ $featuredPost[0]->user->name }}</a></li>
                        <li class="list-inline-item">{{ date('d F Y', strtotime($featuredPost[0]->created_at)) }}</li>
                    </ul>
                </div>
                <a href="">
                    <div class="thumb rounded">
                        <div class="inner data-bg-image"
                            data-bg-image="{{ url('/media/' . $featuredPost[0]->featured_image) }}">
                        </div>
                    </div>
                </a>
            </div>
        @endif


        <br>
        <br>
        <br>
        <!-- section header -->
        @if (count($travelPost) > 0)
            @include('front.partials.home.editors_pick', ['travelPost' => $travelPost])
        @endif


        <!-- section header -->
        @if (count($featuredPost) > 0)
            @include('front.partials.home.inspiration', ['featuredPost' => $featuredPost])
        @endif

        @if (count($latest_post) > 0)
            @include('front.partials.home.latest_post', ['latest_post' => $latest_post])
        @endif



    </div>
    <div class="col-lg-4">
        @include('layouts.front-includes-files.sidebar', [$tags, $categories, $popular_post, $entertainment_post])
    </div>

    @section('script')
        <script type="text/javascript">
            var page = 1;
            $(document).ready(function() {
                $("#btnAjax").click(function() {
                    page++;
                    loadMoreData(page)
                });
            });

            function loadMoreData(page) {
                $.ajax({
                        url: '?page=' + page,
                        type: "get"
                    })
                    .done(function(data) {
                        if (data.html == "") {
                            $('#btnAjax').hide();
                            $('#btnAjax').html("No more records found");
                            return;
                        }
                        $("#post-data").append(data.html);
                    })
                    .fail(function(jqXHR, ajaxOptions, thrownError) {
                        alert('server not responding...');
                    });
            }
        </script>
    @endsection
</x-app-layout>
