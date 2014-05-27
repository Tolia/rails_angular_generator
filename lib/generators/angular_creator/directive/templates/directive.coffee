@APP.directive.<%= @name %> = [
  () ->
    restrict: "C" # "ACE"
    # transclude: true    
    replace: true
    templateUrl: '<%= @template_url %>'
    # scope:
    #   <%= @name %>: '=<%= @name %>'
    # controller: [
    #   "$scope"
    #   "$attrs"
    #   ($scope, $attrs) ->
    # ]
    link: ($scope, $element, $attrs) ->
]