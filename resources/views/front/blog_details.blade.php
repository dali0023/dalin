<x-app-layout>

    <div class="col-lg-8">
        <!-- post single -->
        <div class="post post-single">
            <!-- post header -->
            <div class="post-header">
                <h1 class="title mt-0 mb-3"> {{ $post->title }}</h1>
                <ul class="meta list-inline mb-0">
                    <li class="list-inline-item"><a href="#"><img
                                src="{{ asset('/front/images/other/author-sm.png') }}" class="author"
                                alt="author" />{{ $post->user->name }} </a></li>
                    
                        <li class="list-inline-item"><a href="#">{{ $post->categories->title }}</a></li>
                    
                    <li class="list-inline-item">{{ date('d F Y', strtotime($post->created_at)) }}</li>
                </ul>
            </div>
            <!-- featured image -->
            <div class="featured-image">
                <img src="{{ asset('/media/' . $post->featured_image) }}" alt="post-title" />
            </div>
            <!-- post content -->
            <div class="post-content clearfix">

                {!! $post->content !!}


            </div>
            <!-- post bottom section -->
            <div class="post-bottom">
                <div class="row d-flex align-items-center">
                    <div class="col-md-12 col-12 text-center text-md-start">
                        <!-- tags -->
                        @foreach ($post->tags as $tag)
                            <a href="{{ route('user.tags.show', $tag->id) }}" class="tag">#{{ $tag->title }}</a>
                        @endforeach
                    </div>
                </div>
            </div>

        </div>

        <div class="spacer" data-height="50"></div>

        <div class="about-author padding-30 rounded">
            <div class="thumb">
                <img src="{{ asset('/front/images/other/avatar-about.png') }}" alt="Katen Doe" />
            </div>
            <div class="details">
                <h4 class="name"><a href="#">{{ $post->user->name }}</a></h4>
                <p>Hello, I’m a content writer who is fascinated by content fashion, celebrity and lifestyle. She
                    helps clients bring the right content to the right people.</p>
                <!-- social icons -->
                <ul class="social-icons list-unstyled list-inline mb-0">
                    <li class="list-inline-item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-instagram"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-youtube"></i></a></li>
                </ul>
            </div>
        </div>

        <div class="spacer" data-height="50"></div>

        <!-- section header -->
        <div class="section-header">
            <h3 class="section-title">Comments ({{ $post->comments->count() }})</h3>
            <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
        </div>

        <!-- post comments -->
        <div class="comments bordered padding-30 rounded">

            <ul class="comments">

                @foreach ($post->comments as $comment)
                    <!-- comment item -->
                    <li class="comment rounded">
                        <div class="thumb">
                            <img src="{{ asset('/front/images/other/comment-1.png') }}" alt="" />
                        </div>
                        <div class="details">
                            @if ($comment->user_id)
                                <h4 class="name">{{ $comment->user->name }}</h4>
                            @else
                                <h4 class="name">{{ $comment->guest_user_name }}</h4>
                            @endif


                            <span class="date">{{ date('M d, Y h:i A', strtotime($comment->created_at)) }}</span>
                            <p>{{ $comment->content }}</p>
                            @if ($comment->user_id === Auth::id())
                                <span><a href="#" class="btn btn-default btn-sm">delete</a></span>
                            @endif
                            <span><a class="btn btn-default btn-sm" data-bs-toggle="collapse"
                                    href="#a{{ $comment->id }}" role="button" aria-expanded="false"
                                    aria-controls="a{{ $comment->id }}">
                                    reply
                                </a></span>
                            <div class="collapse" id="a{{ $comment->id }}">
                                <div class="card card-body padding-10" style="margin-top: 10px">

                                    <!--Reply Form Start-->
                                    <form action="{{ route('reply.store') }}" id="comment-form" class="comment-form"
                                        method="post">
                                        @csrf
                                        <input type="hidden" name="post_id" value="{{ $post->id }}" />
                                        <input type="hidden" name="parent_comment_id" value="{{ $comment->id }}" />
                                        <div class="messages"></div>
                                        <div class="row">

                                            <div class="column col-md-12">
                                                <!-- Comment textarea -->
                                                <div class="form-group">
                                                    <textarea name="content" id="InputComment" class="form-control" rows="4" placeholder="Your comment here..."
                                                        required="required"></textarea>
                                                </div>
                                            </div>

                                            @if (!Auth::check())
                                                <div class="column col-md-6">
                                                    <!-- Email input -->
                                                    <div class="form-group">
                                                        <input type="email" class="form-control" id="InputEmail"
                                                            name="guest_user_email" placeholder="Email address"
                                                            required="required">
                                                    </div>
                                                </div>

                                                <div class="column col-md-6">
                                                    <!-- Email input -->
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="InputName"
                                                            name="guest_user_name" placeholder="Your name"
                                                            required="required">
                                                    </div>
                                                </div>
                                            @endif
                                        </div>
                                        <button type="submit" class="btn btn-default">Add Reply</button>
                                    </form>
                                    <!--Reply Form End-->
                                </div>
                            </div>
                        </div>
                    </li>
                    <!-- Reply Item -->
                    @foreach ($comment->replies as $reply)
                        <li class="comment child rounded">
                            <div class="thumb">
                                <img src="{{ asset('/front/images/other/comment-2.png') }}" alt="John Doe" />
                            </div>
                            <div class="details">
                                <h4 class="name"><a href="#">
                                @if ($reply->user_id)
                                    <span style="color: red">{{ $reply->user->name }}</span>
                                @else
                                    <span style="color: red">{{ $reply->guest_user_name }}</span>
                                @endif
                                
                                </a></h4>
                                <span class="date">{{ date('M d, Y h:i A', strtotime($reply->created_at)) }}</span>
                                <p>{{ $reply->content }}</p>
                                <span><a class="btn btn-default btn-sm" data-bs-toggle="collapse"
                                        href="#a{{ $comment->id }}" role="button" aria-expanded="false"
                                        aria-controls="a{{ $comment->id }}">
                                        reply
                                    </a></span>
                            </div>
                        </li>
                       
                    @endforeach
                @endforeach
            </ul>
        </div>

        <div class="spacer" data-height="50"></div>

        <!-- section header -->
        <div class="section-header">
            <h3 class="section-title">Leave Comment</h3>
            <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
        </div>

        <!-- comment form -->
        <div class="comment-form rounded bordered padding-30">

            <form action="{{ route('comment.store') }}" id="comment-form" class="comment-form" method="post">
                @csrf
                <input type="hidden" name="post_id" value="{{ $post->id }}" />
                <div class="messages"></div>
                <div class="row">
                    <div class="column col-md-12">
                        <!-- Comment textarea -->
                        <div class="form-group">
                            <textarea name="content" id="InputComment" class="form-control" rows="4" placeholder="Your comment here..."
                                required="required"></textarea>
                        </div>
                    </div>
                    @guest
                        <div class="column col-md-6">
                            <!-- Email input -->
                            <div class="form-group">
                                <input type="email" class="form-control" id="InputEmail" name="guest_user_email"
                                    placeholder="Email address" required="required">
                            </div>
                        </div>

                        <div class="column col-md-6">
                            <!-- Email input -->
                            <div class="form-group">
                                <input type="text" class="form-control" id="InputName" name="guest_user_name"
                                    placeholder="Your name" required="required">
                            </div>
                        </div>
                    @endguest
                </div>
                <button type="submit" class="btn btn-default">Add Comment</button>
            </form>
        </div>




    </div>
    <div class="col-lg-4">
        @include('layouts.front-includes-files.sidebar', [$tags, $categories])
    </div>
</x-app-layout>
