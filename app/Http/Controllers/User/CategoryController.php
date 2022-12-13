<?php

namespace App\Http\Controllers\User;

use App\Models\Tag;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{
    public function show($slug)
    {

        $tags = Tag::all();

        $categories = Category::all();
        $all_category_posts =  DB::table('categories')->where('slug', '=', $slug)->first();
        $post = DB::table('posts')->where('category_id', '=', $all_category_posts->id)->get();
        return view('front.categories.index', compact('post','tags', 'categories', 'all_category_posts'));
    }
}
