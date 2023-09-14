<!-- canvas menu -->
<div class="canvas-menu d-flex align-items-end flex-column">
    <!-- close button -->
    <button type="button" class="btn-close" aria-label="Close"></button>

    <!-- logo -->
    <div class="logo">
        <img src="{{ asset('/front/images/logo.png') }}" alt="Dalin" />
    </div>

    <!-- menu -->
    <nav>
        <ul class="vertical-menu">
            <li><a href="{{ url('/')}}">Home</a></li>
            <li><a href="{{ route('user.categories.show', 'trending') }}">Trending</a></li>
            <li><a href="{{ route('user.categories.show', 'economy') }}">Economy</a></li>
            <li><a href="{{ url('/about-us') }}">About Us</a></li>
            <li><a href="{{ url('/contact-us') }}">Contact Us</a></li>
        </ul>
    </nav>
</div>
