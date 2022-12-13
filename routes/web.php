<?php
// namespace App\Http\Controllers\User;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TagController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CkeditorController;
use App\Http\Controllers\User\HomeController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\User\TagController as UserTagController;
use App\Http\Controllers\User\CategoryController as UserCategoryController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

// Route::get('/', function () {
//     return view('front.index');
// });

Route::middleware([
    'auth',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
});
Route::middleware(['auth', config('jetstream.auth_session'), 'verified', 'role:admin'])->group(function () {
    Route::get('/admin', [AdminController::class, 'index'])->name('admin.index');
    Route::resource('/roles', RoleController::class);
    Route::post('/roles/{role}/permissions', [RoleController::class, 'givePermission'])->name('roles.permissions');
    Route::resource('/permissions', PermissionController::class);
    Route::resource('/users', UserController::class);
    Route::resource('/admin/posts', PostController::class);
    Route::resource('/admin/categories', CategoryController::class);
    Route::resource('/admin/tags', TagController::class);
});

Route::post('/upload', [CkeditorController::class, 'uploadimage'])->name('ckeditor.upload');

Route::get('/', [HomeController::class, 'index']);
Route::get('/posts/{slug}', [HomeController::class, 'show'])->name('user.posts.show');
Route::get('/categories/{id}', [UserCategoryController::class, 'show'])->name('user.categories.show');
Route::get('/tags/{id}', [UserTagController::class, 'show'])->name('user.tags.show');

Route::post('/comment/store', [CommentController::class, 'store'])->name('comment.store');
Route::post('/reply/store', [CommentController::class, 'replyStore'])->name('reply.store');

