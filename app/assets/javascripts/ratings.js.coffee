initialize_timer = ->
    stop_timer = $("#stop_timing")
    if stop_timer.length
        start = Date.now()
        stop_timer.on "click", -> $('#ratings_timing').val Date.now() - start

$(document).ready initialize_timer
$(document).on 'page:load', initialize_timer
