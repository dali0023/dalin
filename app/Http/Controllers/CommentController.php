<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{

    public function store(Request $request)
    {
        $comment = new Comment();
        $comment->content = $request->get('content');

        if (Auth::check()) {
            $comment->user()->associate($request->user());
        } else {
            $comment->guest_user_name = $request->get('guest_user_name');
            $comment->guest_user_email = $request->get('guest_user_email');
        }
        $post = Post::find($request->get('post_id'));
        $post->comments()->save($comment);
        return back();
    }

    public function replyStore(Request $request)
    {

        $reply = new Comment();
        $reply->content = $request->get('content');
        $reply->parent_comment_id = $request->get('parent_comment_id');

        if (Auth::check()) {
            $reply->user()->associate($request->user());
        } else {
            $reply->guest_user_name = $request->get('guest_user_name');
            $reply->guest_user_email = $request->get('guest_user_email');
        }
        $post = Post::find($request->get('post_id'));
        $post->comments()->save($reply);
        return back();
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
