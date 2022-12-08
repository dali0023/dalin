<x-admin-layout>

    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div class="card">
                <div class="card-header">
                    <div class="card-tools">
                        <a href="{{ route('categories.create') }}" class="btn btn-primary btn-small">Create Category</a>
                    </div>
                    <!-- /.card-tools -->
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr class="text-center">
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
                                <th scope="col">Content</th>
                                <th scope="col">Meta Title</th>
                                <th scope="col">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody class="text-center">
                            @foreach ($categories as $category)
                                <tr>
                                    <th scope="row">{{ $loop->iteration }}</th>
                                    <td>{{ $category->title }}</td>
                                    <td>{{ $category->content }}</td>
                                    <td>{{ $category->meta_title }}</td>
                                    <td>
                                        <!-- Call to action buttons -->
                                        <ul class="list-inline m-0">
                                            <li class="list-inline-item">
                                                <a href="{{ route('categories.edit', $category->id) }}"
                                                    class="btn btn-success btn-sm rounded-0" type="button"
                                                    data-toggle="tooltip" data-placement="top" title="Edit"><i
                                                        class="fa fa-edit"></i></a>
                                            </li>
                                            <li class="list-inline-item">
                                                <form action="{{ route('categories.destroy', $category->id) }}" method="post">
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
