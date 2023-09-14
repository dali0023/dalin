<header class="header-default">
    <nav class="navbar navbar-expand-lg">
        <div class="container-xl">
            <!-- site logo -->
            <a class="navbar-brand" href="{{ url('/') }}"><img src="{{ asset('/front/images/logo.png') }}"
                    style="max-width:120px;max-height:50px " alt="logo" /></a>

            <div class="collapse navbar-collapse">
                <!-- menus -->
                <ul class="navbar-nav mr-auto">
                    @hasanyrole('writer|admin')
                    <li class="nav-item active">
                        <a class="nav-link" href="{{ url('/admin') }}">Dashboard</a>
                    </li>
                    @else
                    <li class="nav-item active">
                        <a class="nav-link" href="{{ url('/') }}">Home</a>
                    </li>
                    @endhasanyrole
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('user.categories.show', 'trending') }}">Trending</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('user.categories.show', 'economy') }}">Economy</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ url('/about-us') }}">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ url('/contact-us') }}">Contact</a>
                    </li>
                    @auth
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                {{ Auth::user()->name }}
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li>
                                    <!-- Authentication -->
                                    <form method="POST" action="{{ route('logout') }}">
                                        @csrf
                                        <x-jet-dropdown-link href="{{ route('logout') }}"
                                            onclick="event.preventDefault(); this.closest('form').submit();">
                                            <i class="fa fa-sign-out"></i>{{ __('Logout') }}
                                        </x-jet-dropdown-link>
                                    </form>
                                </li>
                            </ul>
                        </li>
                    @endauth
                </ul>

            </div>

            <!-- header right section -->
            <div class="header-right">
                <!-- header buttons -->
                <div class="header-buttons">
                    <button class="search icon-button">
                        <i class="icon-magnifier"></i>
                    </button>
                    <button class="burger-menu icon-button">
                        <span class="burger-icon"></span>
                    </button>
                </div>
            </div>
        </div>
    </nav>
</header>
