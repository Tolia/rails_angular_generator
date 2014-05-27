@APP.filter.<%= @name %> = [
  ->
    <%= @name %> = (data) ->
      data
]