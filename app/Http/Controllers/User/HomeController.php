<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{

    public function index(Request $request)
    {
        // $post = Post::where('is_published', 1)->all();
        $tags = Tag::withCount(['post' => fn($q) => $q->where('is_published', 1)])->get();
        $categories = Category::withCount(['post' => fn($q) => $q->where('is_published', 1)])->get();
        $all_category_posts = DB::table('categories')->where('slug', '=', 'inspiration')->first();
        $featuredPost = Post::where('category_id', $all_category_posts->id)->where('is_published', 1)->orderBy('created_at', 'desc')->take(4)->get();

        //Travel
        $all_cat_posts = DB::table('categories')->where('slug', '=', 'travel')->first();
        $travelPost = Post::where('category_id', $all_category_posts->id)->where('is_published', 1)->orderBy('created_at', 'desc')->take(5)->get();

        $popular_post = Post::where('is_published', 1)->orderBy('reads', 'desc')->take(3)->get();
        
        $all_entertainment_posts = DB::table('categories')->where('slug', '=', 'entertainment')->first();
        $entertainment_post =Post::where('category_id', $all_entertainment_posts->id)->where('is_published', 1)->orderBy('created_at', 'desc')->take(2)->get();

        // latest Post with Ajax
        $latest_post = Post::where('is_published', 1)->paginate(4);
        if ($request->ajax()) {
            $view = view('front.partials.home.data', compact('tags', 'categories', 'featuredPost', 'all_category_posts', 'travelPost', 'popular_post', 'latest_post','entertainment_post'))->render();
            return response()->json(['html' => $view]);
        }

        return view('front.index', compact('tags', 'categories', 'featuredPost', 'all_category_posts', 'travelPost', 'popular_post', 'latest_post','entertainment_post'));
    }

    public function show($slug)
    {
        $post = Post::where('slug', $slug)->first();
        if (empty($post)) {
           return redirect('/404');
        }
        $post->reads++;
        $post->save();

        $tags = Tag::withCount(['post' => fn($q) => $q->where('is_published', 1)])->get();
        $categories = Category::withCount(['post' => fn($q) => $q->where('is_published', 1)])->get();
        $popular_post = Post::where('is_published', 1)->orderBy('reads', 'desc')->take(3)->get();
        $all_entertainment_posts = DB::table('categories')->where('slug', '=', 'entertainment')->first();
        $entertainment_post =Post::where('category_id', $all_entertainment_posts->id)->where('is_published', 1)->orderBy('created_at', 'desc')->take(2)->get();

        return view('front.blog_details', compact('post', 'tags', 'categories', 'popular_post','entertainment_post'));
    }

    public function aboutUs()
    {
        $tags = Tag::withCount(['post' => fn($q) => $q->where('is_published', 1)])->get();
        $categories = Category::withCount(['post' => fn($q) => $q->where('is_published', 1)])->get();
        $popular_post = Post::where('is_published', 1)->orderBy('reads', 'desc')->take(3)->get();

        $all_entertainment_posts = DB::table('categories')->where('slug', '=', 'entertainment')->first();
        $entertainment_post =Post::where('category_id', $all_entertainment_posts->id)->where('is_published', 1)->orderBy('created_at', 'desc')->take(2)->get();

        return view('front.about-us.about_us', compact('tags', 'categories', 'popular_post','entertainment_post'));
    }
}
