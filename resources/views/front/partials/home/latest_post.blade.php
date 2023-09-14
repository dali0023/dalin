<div class="section-header">
    <h3 class="section-title">Latest Posts</h3>
    <img src="{{ asset('/front/images/wave.svg') }}" class="wave" alt="wave" />
</div>

<div class="padding-30 rounded bordered">

    <div class="row" id="post-data">
        @include('front.partials.home.data')
    </div>
    <!-- load more button -->
    <div class="text-center" id="btnAjax">
        <button class="btn btn-simple">Load More</button>
    </div>
</div>