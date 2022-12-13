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
        return $this->belongsTo(User::class);
    }
    // one to many relation between post and comment

    public function replies()
    {
        return $this->hasMany(Comment::class, 'parent_comment_id');
    }
}
