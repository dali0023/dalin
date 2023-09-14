<div class="row">
    <div class="column col-md-6">
        <!-- Name input -->
        <div class="form-group">
            <input type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                placeholder="Your name" required value="{{ old('name') }}">
            @error('name')
                <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

    </div>
    <div class="column col-md-6">
        <div class="form-group">
            <input type="email" class="form-control @error('email') is-invalid @enderror" name="email"
                placeholder="Your email" required value="{{ old('email') }}">
            @error('email')
                <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>
    </div>


    <div class="column col-md-12">
        <div class="form-group">
            <input type="text" class="form-control @error('subject') is-invalid @enderror" name="subject"
                placeholder="Your subject" required value="{{ old('subject') }}">
            @error('subject')
                <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>
    </div>

    <div class="column col-md-12">
        <div class="form-group">
            <textarea name="content" id="InputMessage" class="form-control @error('content') is-invalid @enderror" rows="4"
                placeholder="Your message here..." required="required" data-error="Message is required.">{{ old('content') }}</textarea>
            @error('content')
                <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>
    </div>
</div>
