<?php

namespace App\Http\Controllers;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Requests\StoreCategory;
use App\Http\Requests\UpdateCategory;
use Illuminate\Support\Facades\Redirect;


class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::all();
        return view('admin.categories.index', compact('categories'));
    }

    public function create()
    {
        return view('admin.categories.create');
    }

    public function store(StoreCategory $request)
    {
        $validated = $request->validated();
        $category = new Category();
        $category->title = $validated['title'];
        $category->content = $validated['content'];
        $category->meta_title = $validated['meta_title'];
        $category->slug = Str::slug($request->input('title'), "-");
        $category->save();

        session()->flash('status', 'category was added successfully!');
        return redirect('/admin/categories');
    }

    public function edit($id)
    {
        $category = Category::findOrFail($id);
        return view('admin.categories.edit', compact('category'));
    }

    public function update(UpdateCategory $request, $id)
    {
        $validated = $request->validated();
        $category = category::findOrFail($id);
        $category->title = $validated['title'];
        $category->content = $validated['content'];
        $category->meta_title = $validated['meta_title'];
        $category->slug = Str::slug($request->input('title'), "-");
        $category->save();

        session()->flash('status', 'category was updated successfully!');
        return redirect('/admin/categories');
    }

    public function destroy($id)
    {
        $category = Category::findOrFail($id);
        $category->delete();
        session()->flash('status', 'Category Deleted Successfully!');
        return redirect('/admin/categories');
    }

}
