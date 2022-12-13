<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('parent_comment_id')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('guest_user_name')->nullable();
            $table->string('guest_user_email')->nullable();
            $table->morphs('commentable');
            $table->longText('content');
            $table->boolean('is_published')->default('1');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('comments');
    }
};
