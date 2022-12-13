        <!-- post comments -->
        <div class="comments bordered padding-30 rounded">

            <ul class="comments">

                @foreach (comments as $comment)
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


                            <span class="date">{{ date('M d, Y h:i A', strtotime($post->created_at)) }}</span>
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
                                <span class="date">{{ date('M d, Y h:i A', strtotime($post->created_at)) }}</span>
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
