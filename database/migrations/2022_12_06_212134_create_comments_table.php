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
            $table->unsignedBigInteger('user_id')->index();
            $table->foreign('user_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');

            $table->unsignedBigInteger('post_id')->index();
            $table->foreign('post_id')->references('id')->on('posts')->onUpdate('cascade')->onDelete('cascade');

            $table->bigInteger('parent_comment_id')->nullable();
            $table->string('title', 120);
            $table->string('slug', 120);
            $table->longText('content');
            $table->boolean('is_published')->default('1');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('comments');
    }
};
