<x-admin-layout>

    <div class="row">
        <div class="col-md-12 ">
            <div class="card">
                <div class="card-header">
                    <div class="card-tools">
                        <a href="{{ route('posts.create') }}" class="btn btn-primary btn-small">Create Post</a>
                    </div>
                    <!-- /.card-tools -->
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr class="text-center">
                                <th scope="col">#</th>
                                <th scope="col">Title</th>
                                <th scope="col">Author</th>
                                <th scope="col">categories</th>
                                <th scope="col">Tags</th>
                                <th scope="col">Published</th>
                                <th scope="col">Date</th>
                                <th scope="col">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody class="text-center">
                            @foreach ($posts as $post)
                                <tr>
                                    <th scope="row">{{ $loop->iteration }}</th>
                                    <td>{{ $post->title }}</td>
                                    <td>{{ $post->user->name }}</td>

                                    <td>
                                        @foreach ($post->categories as $category)
                                            <span class="badge badge-primary">{{ $category->title }}</span>
                                        @endforeach
                                    </td>
                                    <td>
                                        @foreach ($post->tags as $tag)
                                            <span class="badge badge-warning">{{ $tag->title }}</span>
                                        @endforeach
                                    </td>
                                    <td>
                                        @if ($post->is_published === 0)
                                            <a href="#" class="btn btn-primary btn-small">Publish</a>
                                        @else
                                        <a href="#" class="btn btn-small btn-primary">UnPublish</a>
                                        @endif
                                            {{-- {{ $post->is_published }} --}}
                                    </td>
                                    <td> {{ date('d M, Y', strtotime($post->created_at)) }} </td>
                                    <td>
                                        <!-- Call to action buttons -->
                                        <ul class="list-inline m-0">
                                            <li class="list-inline-item">
                                                <a href="{{ route('user.posts.show', $post->slug) }}" target="_blank"
                                                    class="btn btn-info btn-sm rounded-0" type="button"
                                                    data-toggle="tooltip" data-placement="top" title="Show"><i
                                                        class="fa fa-eye"></i></a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a href="{{ route('posts.edit', $post->id) }}"
                                                    class="btn btn-success btn-sm rounded-0" type="button"
                                                    data-toggle="tooltip" data-placement="top" title="Edit"><i
                                                        class="fa fa-edit"></i></a>
                                            </li>
                                            <li class="list-inline-item">
                                                <form action="{{ route('posts.destroy', $post->id) }}" method="post">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button class="btn btn-danger btn-sm rounded-0" type="submit"
                                                        data-toggle="tooltip" data-placement="top" title="Delete"><i
                                                            class="fa fa-trash"></i></button>
                                                </form>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
                <!-- /.card-body -->
            </div>

        </div>
    </div>


</x-admin-layout>
