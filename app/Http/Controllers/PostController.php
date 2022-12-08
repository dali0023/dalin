<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::all();
        return view('admin.posts.index', compact('posts'));
    }

    public function create()
    {
        $tags = Tag::all();
        $categories = Category::all();
        return view('admin.posts.create', compact('tags', 'categories'));
    }

    public function upload_image(Request $request)
    {
        if ($request->hasFile('upload')) {
            $originName = $request->file('upload')->getClientOriginalName();
            $fileName = pathinfo($originName, PATHINFO_FILENAME);
            $extension = $request->file('upload')->getClientOriginalExtension();
            $fileName = $fileName . '_' . time() . '.' . $extension;
            $request->file('upload')->move(public_path('media'), $fileName);
            $url = asset('media/' . $fileName);
            return response()->json(['fileName' => $fileName, 'uploaded' => 1, 'url' => $url]);
        }
    }

    public function store(Request $request)
    {

        $request->validate([
            'title' => ['required', 'string', 'min:5', 'max:255', 'unique:posts'],
            'meta_title' => ['required', 'string', 'max:255'],
            'content' => ['required'],
            'tags' => ['required'],
            'category' => ['required'],
        ]);


        $posts = new Post();
        $posts->user_id = Auth::id();
        $posts->title = $request->title;
        $posts->meta_title = $request->meta_title;
        $posts->slug = Str::slug($request->input('title'), "-");
        $posts->content = $request->content;
        $posts->is_published = 0;
        $posts->save();

        $posts->tags()->attach($request->input('tag')); // save data to category_post pivot table
        $posts->categories()->attach($request->input('category')); // save data to post_tag pivot table

        session()->flash('status', 'post was added successfully!');
        return redirect('/posts');
    }

    public function show($id)
    {
        $post = Post::find($id); // it will auto retrive all related table's data
        return view('admin.posts.show', compact('post'));
    }

    public function edit($id)
    {
        $post = Post::find($id);
        $tags = Tag::all();
        $categories = Category::all();
        return view('admin.posts.edit', compact('post', 'tags', 'categories'));
    }

    public function update(Request $request, $id)
    {
        $posts = Post::find($id);
        $posts->user_id = Auth::id();
        $posts->title = $request->title;
        $posts->meta_title = $request->meta_title;
        $posts->slug = Str::slug($request->input('title'), "-");
        $posts->content = $request->content;
        $posts->is_published = 0;
        $posts->save();

        $posts->tags()->sync($request->input('tags')); // save data to category_post pivot table
        $posts->categories()->sync($request->input('category')); // save data to post_tag pivot table

        session()->flash('status', 'post was updated successfully!');
        return redirect('/posts');
    }

    public function destroy($id)
    {
        $post = Post::find($id);
        $post->tags()->detach(); // remove post related tags
        $post->categories()->detach(); // remove post related categories
        $post->delete();  // delete post

        session()->flash('status', 'post was deleted successfully!');
        return redirect('/posts');
    }
}
