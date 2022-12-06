<div class="mb-3">
    <label for="text" class="form-label">Name</label>
    <input type="text" class="form-control @error('name') is-invalid @enderror" name="name"
        value="{{ old('name') }}">
    @error('name')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>
<div class="mb-3">
    <label for="text" class="form-label">Email</label>
    <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" 
        value="{{ old('email') }}">
    @error('email')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>

<div class="mb-3">
    <label for="password" class="form-label">Password</label>
    <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" required
        autocomplete="new-password">
    @error('password')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>
<div class="mb-3">
    <label for="password" class="form-label">Confirm Password</label>
    <input type="password" class="form-control @error('password_confirmation') is-invalid @enderror"
        name="password_confirmation" required autocomplete="new-password">
    @error('password_confirmation')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>


<div class="mb-3">
    <label>Assign Permissions</label>
    <select class="select2bs4" name="permission[]" multiple="multiple" data-placeholder="Select a Permission"
        style="width: 100%;">
            @foreach ($permissions as $permission)
                <option value="{{ $permission->id }}">{{ $permission->name }}</option>
            @endforeach
        </select>
</div>
