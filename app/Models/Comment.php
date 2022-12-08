<?php

namespace App\Models;

use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Comment extends Model
{
    use HasFactory;
    
    // one to many relation between user and comment
    public function user()
    {
        $this->belongsTo(User::class);
    }

    // one to many relation between post and comment

    public function post()
    {
        $this->belongsTo(Post::class);
    }
}
