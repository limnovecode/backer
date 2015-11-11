# vendor/assets/javascripts/row.coffee

$.setRowLeft = ->
  row = $(".rowActivateLeft > .rowCountLeft")
  number = 4
  if row[0]
    return row.each(->
      i = 0
      _results = []
      while i < row.length
        row.slice(i, i + number).wrapAll '<div class=/"row00Left/"></div>'
        _results.push i += number
      _results
    )
  return

$.setRowRight = ->
  row = $(".rowActivateRight > .rowCountRight")
  number = 2
  if row[0]
    return row.each(->
      i = 0
      _results = []
      while i < row.length
        row.slice(i, i + number).wrapAll '<div class="row00Right"></div>'
        _results.push i += number
      _results
    )
  return
