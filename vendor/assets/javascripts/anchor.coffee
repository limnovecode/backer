# vendor/assets/javascripts/anchor.coffee

$.setAnchor = ->
  anchor = $(".off")
  if anchor[0]
    return anchor.on("click", (e) ->
      e.preventDefault()
    )
  return
