 <div class="search-content">
     <div class="text-center">
         <h3 class="mb-4 mt-0">Press ESC to close</h3>
     </div>
     <!-- form -->
     <form action="{{ url('/search') }}" class="d-flex search-form" method="get">
         <input name = "search" class="form-control me-2" type="text" placeholder="Search and press enter ..." aria-label="Search">
         <button class="btn btn-default btn-lg" type="submit"><i class="icon-magnifier"></i></button>
     </form>
 </div>
