<x-admin-layout>

    <div class="row">
        <div class="col-md-6 offset-md-1">
            <div class="card" style="padding: 30px">
                <div class="card-body">
                    <form action="{{ route('permissions.update', ['permission'=>$permission->id]) }}" method="POST">
                        @csrf
                        @method('PUT')
                        @include('admin.partials.permissions-form')
                        <button type="submit" class="btn btn-primary">Update Permission</button>
                    </form>
                </div>
            </div>
        </div>
    </div>


</x-admin-layout>
