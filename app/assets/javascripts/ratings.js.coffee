$(document).ready ->
    $("#stop_timing").on "click", (event) -> $('#ratings_timing').val(Date.now() - start);
