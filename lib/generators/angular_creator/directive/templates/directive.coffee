@APP.directive.<%= class_name.classify %> = [
  () ->
    restrict: "C" # "ACE"
    # transclude: true    
    replace: true
    templateUrl: '<%= @template_url %>'
    # scope:
    #   <%= class_name %>: '=<%= class_name %>'
    # controller: [
    #   "$scope"
    #   "$attrs"
    #   ($scope, $attrs) ->
    # ]
    link: ($scope, $element, $attrs) ->
]