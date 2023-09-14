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

        $all_category_posts =  Category::where('slug', '=', $slug)->first();
        if (empty($all_category_posts)) {
            return redirect('/404');
         }
        $tags = Tag::withCount(['post' => fn($q) => $q->where('is_published', 1)])->get();
        $categories = Category::withCount(['post' => fn($q) => $q->where('is_published', 1)])->get();
        $post = Post::where('category_id', '=', $all_category_posts->id)->where('is_published', 1)->get();
        $popular_post = Post::where('is_published', 1)->orderBy('reads', 'desc')->take(3)->get();

        $all_entertainment_posts = DB::table('categories')->where('slug', '=', 'entertainment')->first();
        $entertainment_post =Post::where('category_id', $all_entertainment_posts->id)->where('is_published', 1)->orderBy('created_at', 'desc')->take(2)->get();
        return view('front.categories.index', compact('post','tags', 'categories', 'all_category_posts','popular_post','entertainment_post'));
    }
}
