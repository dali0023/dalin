<x-admin-layout>

    <div class="row">
        <div class="col-md-6 offset-md-1">
            <div class="card" style="padding: 30px">
                <div class="card-body">
                    <form action="{{ route('tags.update', ['tag' => $tag->id]) }}" method="POST">
                        @csrf
                        @method('PUT')
                        @include('admin.partials.tags-form')
                        <button type="submit" class="btn btn-success">Update Tag</button>
                    </form>
                </div>
            </div>
        </div>
    </div>


</x-admin-layout>
