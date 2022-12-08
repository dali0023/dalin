<?php

namespace App\Models;

use App\Models\Tag;
use App\Models\Comment;
use App\Models\Category;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;

    // relation between user and post (one to many)
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // relation between  post and comments (one to many)
    public function comments() 
    {
        return $this->hasMany(Comment::class);
    }

    // relation between  category and post(one to many)
    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }

    // many to many relationship between tags and posts
    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }


}
