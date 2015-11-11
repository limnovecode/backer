# app/assets/javascripts/publicboard/initializes.coffee

$(window).load ->
  $.setLoadPage()
  $.setFit()
  $.setRowLeft()
  $.setRowRight()
  $.setAnchor()
  return
$(window).resize ->
  $.setLoadPage()
  $.setFit()
  $.setRowLeft()
  $.setRowRight()
  $.setAnchor()
  return
$(document).on "ready", (event) ->
  $.setLoadPage()
  $.setFit()
  $.setRowLeft()
  $.setRowRight()
  $.setAnchor()
  return
$(document).on "ready page:load", (event) ->
  $.setLoadPage()
  $.setFit()
  $.setRowLeft()
  $.setRowRight()
  $.setAnchor()
  return
$(document).on "page:partial-load", (event) ->
  $.setLoadPage()
  $.setFit()
  $.setRowLeft()
  $.setRowRight()
  $.setAnchor()
  return
$(document).on "page:change", (event) ->
  $.setLoadPage()
  $.setFit()
  $.setRowLeft()
  $.setRowRight()
  $.setAnchor()
  return
$(document).on "page:after-remove", (event) ->
  $.setLoadPage()
  $.setFit()
  $.setRowLeft()
  $.setRowRight()
  $.setAnchor()
  return
