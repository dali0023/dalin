<x-app-layout>
    <div class="section-header text-center">
        @if (count($latest_post) > 0)
        <h3 class="section-title">Total ({{ $latest_post->count() }}) Result Found for "{{ $search }}"</h3>
        @endif
        <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
    </div>

    <div class="padding-30 rounded bordered">

        <div class="row">
            @if (count($latest_post) > 0)
                @include('front.partials.home.data', $latest_post)
            @else
                <div class="col-md-12 text-center">
                    <h3>No Data Found</h3>
                </div>
            @endif
        </div>
    </div>
</x-app-layout>
