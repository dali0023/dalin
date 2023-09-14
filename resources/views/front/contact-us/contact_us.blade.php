<x-app-layout>
    @section('title')
        Contact Us
    @endsection
    <!-- page header -->
    @section('page_header')
        <section class="page-header">
            <div class="container-xl">
                <div class="text-center">
                    <h1 class="mt-0 mb-2">Contact</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center mb-0">
                            <li class="breadcrumb-item"><a href="#">Home/</a></li>
                            <li>Contact</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
    @endsection

    <div class="row">

        <div class="col-md-4">
            <!-- contact info item -->
            <div class="contact-item bordered rounded d-flex align-items-center">
                <span class="icon icon-phone"></span>
                <div class="details">
                    <h3 class="mb-0 mt-0">Phone</h3>
                    <p class="mb-0">+1-236-555-0135</p>
                </div>
            </div>
            <div class="spacer d-md-none d-lg-none" data-height="30"></div>
        </div>

        <div class="col-md-4">
            <!-- contact info item -->
            <div class="contact-item bordered rounded d-flex align-items-center">
                <span class="icon icon-envelope-open"></span>
                <div class="details">
                    <h3 class="mb-0 mt-0">E-Mail</h3>
                    <p class="mb-0">dalim2734@gmail.com</p>
                </div>
            </div>
            <div class="spacer d-md-none d-lg-none" data-height="30"></div>
        </div>

        <div class="col-md-4">
            <!-- contact info item -->
            <div class="contact-item bordered rounded d-flex align-items-center">
                <span class="icon icon-map"></span>
                <div class="details">
                    <h3 class="mb-0 mt-0">Location</h3>
                    <p class="mb-0">Toronto, Canada</p>
                </div>
            </div>
        </div>

    </div>

    <div class="spacer" data-height="50"></div>

    <!-- section header -->
    <div class="section-header">
        <h3 class="section-title">Send Message</h3>
        <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
    </div>

    @if (Session::has('success'))
        <div class="alert alert-success">
            {{ Session::get('success') }}
        </div>
    @endif

    <!-- Contact Form -->
    <form action="{{ route('contact.store') }}" id="contact-form" class="contact-form" method="post">
        @csrf
        @include('front.partials.contact-us.contact_form')
        <button type="submit" id="submit" class="btn btn-default">Send
            Message</button>
            
    </form>

</x-app-layout>
