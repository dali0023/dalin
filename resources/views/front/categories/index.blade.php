<x-app-layout>
    @section('title')
        {{ $all_category_posts->title }}
    @endsection
    @section('page_header')
        <section class="page-header">
            <div class="container-xl">
                <div class="text-center">
                    <h1 class="mt-0 mb-2"> {{ $all_category_posts->title }}</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a href="#">Home/Cateories/</a></li>
                            <li class=""> {{ $all_category_posts->title }}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
    @endsection

    <div class="col-lg-8">

        <div class="row gy-4">
            @foreach ($post as $category_post)
                <div class="col-sm-6">
                    <!-- post -->
                    <div class="post post-grid rounded bordered">
                        <div class="thumb top-rounded">
                            <a href="{{ route('user.categories.show', $all_category_posts->slug) }}"
                                class="category-badge position-absolute">
                                {{ $all_category_posts->title }}
                            </a>
                            <a href="#">
                                <div class="inner">
                                    <img src="{{ url('/media/' . $category_post->featured_image) }}"
                                        alt="{{ $category_post->title }}" />
                                </div>
                            </a>
                        </div>
                        <div class="details">
                            <ul class="meta list-inline mb-0">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <img src="{{ asset('front/images/other/author-sm.png') }}" class="author"
                                            alt="author" />
                                        {{ $category_post->user->name }}
                                    </a>
                                </li>
                                <li class="list-inline-item">{{ date('d F Y', strtotime($category_post->created_at)) }}
                                </li>
                            </ul>
                            <h5 class="post-title mb-3 mt-3"><a
                                    href="{{ route('user.posts.show', $category_post->slug) }}">
                                    
                                {!! \Illuminate\Support\Str::limit(strip_tags($category_post->title), $limit = 40, $end = '..') !!}

                                </a></h5>
                            <p class="excerpt mb-0" style="text-align: justify">
                                {!! \Illuminate\Support\Str::limit(strip_tags($category_post->content), $limit = 80, $end = '...') !!}
                            </p>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>


    </div>
    <div class="col-lg-4">
        @include('layouts.front-includes-files.sidebar', [$tags, $categories])
    </div>

</x-app-layout>
