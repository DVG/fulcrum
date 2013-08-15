# Case insensitive contains
$.expr[':'].ci_contains = (a, i, m) ->
  $(a).text().toUpperCase().indexOf(m[3].toUpperCase()) >= 0

