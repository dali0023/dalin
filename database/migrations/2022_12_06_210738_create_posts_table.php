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
        Schema::create('posts', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('author_id')->index();
            $table->foreign('author_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');

            $table->string('title', 75);
            $table->string('meta_title', 100);
            $table->string('slug', 100);
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
        Schema::dropIfExists('posts');
    }
};
