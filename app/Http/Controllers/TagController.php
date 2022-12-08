<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use Illuminate\Support\Str;
use App\Http\Requests\StoreTag;
use App\Http\Requests\UpdateTag;
use Illuminate\Support\Facades\Redirect;

class TagController extends Controller
{
    public function index()
    {
        $tags = Tag::all();
        return view('admin.tags.index', compact('tags'));
    }

    public function create()
    {
        return view('admin.tags.create');
    }

    public function store(StoreTag $request)
    {
        $validated = $request->validated();
        $tag = new Tag();
        $tag->title = $validated['title'];
        $tag->content = $validated['content'];
        $tag->meta_title = $validated['meta_title'];
        $tag->slug = Str::slug($request->input('title'), "-");
        $tag->save();

        session()->flash('status', 'Tag was added successfully!');
        return redirect('/tags');
    }

    public function edit($id)
    {
        $tag = Tag::findOrFail($id);
        return view('admin.tags.edit', compact('tag'));
    }

    public function update(UpdateTag $request, $id)
    {
        $validated = $request->validated();
        $tag = Tag::findOrFail($id);
        $tag->title = $validated['title'];
        $tag->content = $validated['content'];
        $tag->meta_title = $validated['meta_title'];
        $tag->slug = Str::slug($request->input('title'), "-");
        $tag->save();

        session()->flash('status', 'Tag was updated successfully!');
        return redirect('/tags');
    }

    public function destroy($id)
    {
        $tag = Tag::findOrFail($id);
        $tag->delete();
        session()->flash('status', 'Role Deleted Successfully!');
        return Redirect::route('tags.index');
    }

}
