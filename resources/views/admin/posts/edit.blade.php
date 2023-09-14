<x-admin-layout>
    <div class="row">
        <div class="col-md-8 offset-md-1">
            <div class="card" style="padding: 30px">
                <div class="card-body">
                    <form action="{{ route('posts.update', ['post' => $post->id]) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="text" class="form-label">Title</label>
                            <input type="text" class="form-control @error('title') is-invalid @enderror"
                                name="title" value="{{ $post->title }}">
                            @error('title')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="text" class="form-label">Meta Title</label>
                            <input type="text" class="form-control @error('meta_title') is-invalid @enderror"
                                name="meta_title" value="{{ $post->meta_title }}">
                            @error('meta_title')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>


                        <div class="mb-3">
                            <label for="content" class="form-label">Content</label>
                            <textarea name="content" class="form-control mt-5 @error('content') is-invalid @enderror" rows="10"
                                id="editor">{{ $post->content }}</textarea>
                            @error('content')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="text" class="form-label">Featured Image</label>
                            <input class="form-control @error('featured_image') is-invalid @enderror"
                                name="featured_image" id="formFileSm" type="file" style="line-height: 1;">
                            @error('featured_image')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror <br>
                            <img src="{{ url('/media/' . $post->featured_image) }}" alt="post-title" width="200px"
                                height="100px" />

                        </div>

                        <div class="mb-3">
                            <label>Tags</label>
                            <select class="select2bs4" name="tags[]" multiple="multiple"
                                data-placeholder="Select a Permission" style="width: 100%;">
                                @foreach ($tags as $tag)
                                    <option value="{{ $tag->id }}"
                                        {{ in_array($tag->id,$post->tags()->pluck('id')->toArray())? 'selected': '' }}>
                                        {{ $tag->title }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label>Categories</label>
                            <select class="select2bs4" name="category"
                                data-placeholder="Select a Category" style="width: 100%;">
                                @foreach ($categories as $category)
                                    <option value="{{ $category->id }}"
                                        {{ in_array($category->id,$post->categories()->pluck('id')->toArray())? 'selected': '' }}>
                                        {{ $category->title }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update Post</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-admin-layout>
