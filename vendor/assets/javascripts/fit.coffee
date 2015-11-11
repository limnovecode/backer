# vendor/assets/javascripts/fit.coffee

$.setFit = ->
  fit = $(".fit")
  if fit[0]
    return fit.each(->
      fitWidth = $(this).width()
      fitParent = $(this).parent().width()
      fitMargin = Math.ceil((fitParent - fitWidth) / 2)
      $(this).css marginLeft: fitMargin
    )
  return
