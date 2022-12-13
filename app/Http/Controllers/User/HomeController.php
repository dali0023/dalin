<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    public function index()
    {
        $post = Post::all();
        $tags = Tag::all(); 
        $categories = Category::all();
        return view('front.index', compact('post', 'tags', 'categories'));
    }

    public function show($slug)
    {
        $post = Post::where('slug', $slug)->first();

        // dd($post->comments);

        $tags = Tag::all();     
        $categories = Category::all();
        return view('front.blog_details', compact('post', 'tags', 'categories'));
    }


}
