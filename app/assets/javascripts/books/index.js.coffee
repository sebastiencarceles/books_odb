$ ->
  console.log "Index loaded"

  $("a[data-remote]").on "ajax:beforeSend", (event) ->
    console.log "Event will be sent"
