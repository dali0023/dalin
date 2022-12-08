<div class="mb-3">
    <label for="text" class="form-label">Title</label>
    <input type="text" class="form-control @error('title') is-invalid @enderror" name="title"
        value="{{ old('title', optional($tag ?? null)->title) }}">
    @error('title')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>
<div class="mb-3">
    <label for="text" class="form-label">Content</label>
    <input type="text" class="form-control @error('content') is-invalid @enderror" name="content"
        value="{{ old('content', optional($tag ?? null)->content) }}">
    @error('content')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>
<div class="mb-3">
    <label for="text" class="form-label">Meta Title</label>
    <input type="text" class="form-control @error('meta_title') is-invalid @enderror" name="meta_title"
        value="{{ old('meta_title', optional($tag ?? null)->meta_title) }}">
    @error('meta_title')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>
