<x-admin-layout>

    <div class="row">
        <div class="col-md-10 offset-md-1">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">{{ $post->title }}</h3>
                    <div class="card-tools">

                        <span class="badge badge-primary">Label</span>
                    </div>
                    <!-- /.card-tools -->
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    The body of the card
                    <br>

                    @foreach ($post->tags as $tag)
                        <span>{{ $tag->title }}</span>
                    @endforeach

                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    The footer of the card
                </div>
                <div class="card-footer">
                    The footer of the card
                </div>
                <!-- /.card-footer -->
            </div>
            <!-- /.card -->

        </div>
    </div>


</x-admin-layout>
