angular.
module(@APP.name, @APP.modules).
factory(@APP.factory).
directive(@APP.directive).
controller(@APP.controller).
service(@APP.service).
config [
  '$locationProvider'
  ($locationProvider) ->
    $locationProvider.html5Mode(true)
]