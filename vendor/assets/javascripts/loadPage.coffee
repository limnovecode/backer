# vendor/assets/javascripts/loadPage.coffee

$.setLoadPage = ->
  loadPage = $(".loadPage")
  if loadPage[0]
    return loadPage.show(0)
  return
