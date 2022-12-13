<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Str;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::all();
        $tags = Tag::all();
        return view('admin.posts.index', compact('posts', 'tags'));
    }

    public function create()
    {
        $tags = Tag::all();
        $categories = Category::all();
        return view('admin.posts.create', compact('tags', 'categories'));
    }

    public function store(Request $request)
    {

        $request->validate([
            'title' => ['required', 'string', 'min:5', 'max:255', 'unique:posts'],
            'meta_title' => ['required', 'string', 'max:255'],
            'featured_image' => 'required|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
        ]);
        // dd($request->featured_image);
        $posts = new Post();
        $posts->user_id = Auth::id();
        $posts->title = $request->title;
        $posts->meta_title = $request->meta_title;
        $posts->slug = Str::slug($request->input('title'), "-");
        $posts->content = $request->content;
        $posts->category_id = $request->category;
        $posts->is_published = 0;

        // $input = $request->all();

        if ($image = $request->file('featured_image')) {
            $destinationPath = 'media/';
            $featuredImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $featuredImage);
            $posts->featured_image = $featuredImage;
        }

        $posts->save();

        $posts->tags()->attach($request->input('tag')); // save data to category_post pivot table

        session()->flash('status', 'post was added successfully!');
        return Redirect::route('posts.index');
    }

    // public function show($id)
    // {
    //     $post = Post::find($id); // it will auto retrive all related table's data
    //     return view('admin.posts.show', compact('post'));
    // }

    public function edit($id)
    {
        $post = Post::find($id);
        $tags = Tag::all();
        $categories = Category::all();
        return view('admin.posts.edit', compact('post', 'tags', 'categories'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => ['required', 'string', 'min:5', 'max:255'],
            'meta_title' => ['required', 'string', 'max:255'],
            'featured_image' => 'image|mimes:jpg,png,jpeg,gif,svg|max:2048',
        ]);

        $posts = Post::find($id);
        $posts->user_id = Auth::id();
        $posts->title = $request->title;
        $posts->meta_title = $request->meta_title;
        $posts->slug = Str::slug($request->input('title'), "-");
        $posts->content = $request->content;
        $posts->category_id = $request->category;
        $posts->is_published = 0;

        if (request()->hasFile('featured_image') && request('featured_image') != '') {
            $imagePath = str_replace("\\", "/", public_path('media/' . $posts->featured_image));
            if (File::exists($imagePath)) {
                File::delete($imagePath);
            }
            $image = $request->file('featured_image');
            $destinationPath = 'media/';
            $featuredImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $featuredImage);
            $posts->featured_image = $featuredImage;
        }

        $posts->save();

        $posts->tags()->sync($request->input('tags')); // save data to category_post pivot table

        session()->flash('status', 'post was updated successfully!');
        return Redirect::route('posts.index');
    }

    public function destroy($id)
    {
        $post = Post::find($id);
        if ($post->featured_image) {
            $imagePath = str_replace("\\", "/", public_path('media/' . $post->featured_image));
            if (File::exists($imagePath)) {
                File::delete($imagePath);
            }
        }
        $post->tags()->detach(); // remove post related tags
        $post->categories()->detach(); // remove post related categories
        $post->delete(); // delete post

        session()->flash('status', 'post was deleted successfully!');
        return Redirect::route('posts.index');
    }
}
