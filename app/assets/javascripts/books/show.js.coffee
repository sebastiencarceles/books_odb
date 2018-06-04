$ ->
  $("#new-comment").hide()

  $("#add-comment").on "click", (e) ->
    e.preventDefault()
    $("#new-comment").show()
    $("#new-comment").find("form")[0].reset()
    $("#comments").hide()
    $("#add-comment").hide()
    false
    