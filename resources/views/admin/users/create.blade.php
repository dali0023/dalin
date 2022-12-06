<x-admin-layout>
    <div class="row">
        <div class="col-md-6 offset-md-1">
            <div class="card" style="padding: 30px">
                <div class="card-body">
                    <form action="{{ route('users.store') }}" method="POST" >
                        @csrf
                        @include('admin.partials.registration_form')
                        <button type="submit" class="btn btn-primary">Create Users</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-admin-layout>