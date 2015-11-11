# vendor/assets/javascripts/sortable.coffee

$.setSortable = ->
  if $("#sortable")[0]
    return $("#sortable").sortable(
      option: "grid"
      axis: "y"
      handle: ".handle"
      revert: false
      scroll: true
      update: ->
        $.post $(this).data("update-url"),
        $(this).sortable("serialize")
    )
  return
