<x-admin-layout>

    <div class="row">
        <div class="col-md-6 offset-md-1">
            <div class="card" style="padding: 30px">
                <div class="card-body">
                    <form action="{{ route('users.update', ['user' => $user->id]) }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="mb-3">
                            <label for="text" class="form-label">Name</label>
                            <input type="text" class="form-control @error('name') is-invalid @enderror"
                                name="name" value="{{ $user->name }}">
                            @error('name')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="text" class="form-label">Email</label>
                            <input type="email" class="form-control @error('email') is-invalid @enderror"
                                name="email" value="{{ $user->email }}">
                            @error('email')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control @error('password') is-invalid @enderror"
                                value="{{ $user->password }}" disabled>
                            @error('password')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Confirm Password</label>
                            <input type="password"
                                class="form-control @error('password_confirmation') is-invalid @enderror"
                                name="password_confirmation" value="{{ $user->password }}" disabled>
                            @error('password_confirmation')
                                <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="mb-3">
                            <label>Assign Permissions</label>
                            <select class="select2bs4" name="permission[]" multiple="multiple"
                                data-placeholder="Select a Permission" style="width: 100%;">
                                @foreach ($permissions as $permission)
                                    <option value="{{ $permission->id }}"
                                        @if ($user->hasPermissionTo($permission->id)) selected = selected @endif>
                                        {{ $permission->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update User</button>
                    </form>
                </div>
            </div>
        </div>
    </div>


</x-admin-layout>
