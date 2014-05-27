@APP.filter.<%= class_name.classify %> = [
  ->
    <%= class_name %> = (data) ->
      data
]