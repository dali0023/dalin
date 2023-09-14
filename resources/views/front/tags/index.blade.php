<x-app-layout>
@section('title')
    {{ $getAllPostsBytag[0]->title }}
@endsection

        @section('page_header')
        <section class="page-header">
            <div class="container-xl">
                <div class="text-center">
                    <h1 class="mt-0 mb-2"> {{ $getAllPostsBytag[0]->title }}</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a href="#">Home/Cateories/</a></li>
                            <li class=""> {{ $getAllPostsBytag[0]->title }}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
    @endsection

    <div class="col-lg-8">

        <div class="row gy-4">
            @foreach ($getAllPostsBytag[0]->post as $tag_post)
            @if ($tag_post->is_published === 1)
                  <div class="col-sm-6">
                    <!-- post -->
                    <div class="post post-grid rounded bordered">
                        <div class="thumb top-rounded">
                            <a href="{{ route('user.categories.show', $getAllPostsBytag[0]->slug) }}" class="category-badge position-absolute">
                                {{ $getAllPostsBytag[0]->title }}
                            </a>
                            <a href="#">
                                <div class="inner">
                                    <img src="{{ url('/media/' . $tag_post->featured_image) }}" alt="post-title" />
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <ul class="meta list-inline mb-0">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <img src="https://www.pngfind.com/pngs/m/676-6764065_default-profile-picture-transparent-hd-png-download.png" class="author"
                                           style="height: 30px;width: 30px;border-radius: 50%;border: 1px solid rgb(161, 159, 159);" alt="author" />
                                        {{ $tag_post->user->name }}    
                                    </a>
                                </li>
                                <li class="list-inline-item">{{ date('d F Y', strtotime($tag_post->created_at)) }}
                                </li>
                            </ul>
                            <h5 class="post-title mb-3 mt-3"><a
                                    href="{{ route('user.posts.show', $tag_post->slug) }}">
                                    {{ $tag_post->title }}
                                </a></h5>
                            <p class="excerpt mb-0" style="text-align: justify">
                                {!! \Illuminate\Support\Str::limit(strip_tags($tag_post->content), $limit = 80, $end = '...') !!}
                            </p>
                        </div>
                    </div>
                </div>
            @endif       
            @endforeach
        </div>
    </div>

    

    <div class="col-lg-4">
        @include('layouts.front-includes-files.sidebar', [$tags, $categories])
    </div>

</x-app-layout>
