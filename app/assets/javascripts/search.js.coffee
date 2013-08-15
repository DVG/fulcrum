showHideTags = (tag) ->
  $("div.story:ci_contains(#{tag})").show()
  $("div.story:not(:ci_contains(#{tag}))").hide()

showAllTags = ->
  $("div.story").show()

$ ->
  $('#search').keyup () ->
    search_term = $('#search').val()
    if search_term == ''
      showAllTags()
    else
      showHideTags(search_term)