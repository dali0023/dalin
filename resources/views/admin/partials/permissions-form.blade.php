<div class="mb-3">
    <label for="text" class="form-label">Name</label>
    <input type="text" class="form-control @error('name') is-invalid @enderror" name="name"
        value="{{ old('name', optional($permission ?? null)->name) }}">
    @error('name')
        <div class="text-danger">{{ $message }}</div>
    @enderror
</div>