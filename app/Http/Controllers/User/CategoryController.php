<?php

namespace App\Http\Controllers\User;

use App\Models\Tag;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{
    public function show($id)
    {
        // $post = Post::find($id);
        // $tags = Tag::all();
        
        // $categories = Category::all();
        // $all_category_posts = Category::find($id);
        // return view('front.blog_details', compact('post', 'tags', 'categories'));
    }
}
