<div class="mb-3">
    <label for="text" class="form-label">Title</label>
    <input type="text" class="form-control @error('title') is-invalid @enderror" name="title"
        value="{{ old('title') }}">
    @error('title')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>
<div class="mb-3">
    <label for="text" class="form-label">Meta Title</label>
    <input type="text" class="form-control @error('meta_title') is-invalid @enderror" name="meta_title"
        value="{{ old('meta_title') }}">
    @error('meta_title')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>
<div class="mb-3">
    <label for="text" class="form-label">Featured Image</label>
    <input class="form-control @error('featured_image') is-invalid @enderror" name="featured_image" id="formFileSm" type="file" style="line-height: 1;">
</div>



<div class="mb-3">
    <label for="content" class="form-label">Content</label>
    <textarea name="content" class="form-control mt-5 @error('content') is-invalid @enderror" rows="10"
        id="editor"">
        {{ old('content') }}
    </textarea>
    @error('content')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>

<div class="mb-3">
    <label>Tags</label>
    <select class="select2bs4" name="tag[]" multiple="multiple" data-placeholder="Select Tags" style="width: 100%;" required>
        @foreach ($tags as $tag)
            <option value="{{ $tag->id }}">{{ $tag->title }}</option>
        @endforeach
    </select>
    @error('tags')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>
<div class="mb-3">
    <label>Categories</label>
    <select class="select2bs4" name="category" data-placeholder="Select a Category" required
        style="width: 100%;">
        @foreach ($categories as $category)
            <option value="{{ $category->id }}">{{ $category->title }}</option>
        @endforeach
    </select>
    @error('category')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>
