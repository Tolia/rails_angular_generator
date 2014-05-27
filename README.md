# rails_angular_creator

generate a angular distribution for your rails app

## Installation

First start by adding this gem to your Gemfile:
```
gem "rails_angular_creator", git: 'Tolia/rails_angular_creator'
```
And then execute
```
$ bundle
```


## Usage

AngularCreator generator:
-  angular_creator:assets
-  angular_creator:controller
-  angular_creator:directive
-  angular_creator:factory
-  angular_creator:filter
-  angular_creator:service‎

### init angular assets
``` pry
> rails g angular_creator:assets
   identical  app/assets/javascripts/ng_manifest.js
   identical  app/assets/javascripts/ng/init.coffee
   identical  app/assets/javascripts/ng/settings.coffee
   identical  app/assets/javascripts/ng/controllers/.keep
   identical  app/assets/javascripts/ng/directives/.keep
   identical  app/assets/javascripts/ng/factories/.keep
   identical  app/assets/javascripts/ng/filters/.keep
   identical  app/assets/javascripts/ng/services‎/.keep
   identical  app/assets/html/.keep
      create  config/initializers/slim_assets.rb
```

### generator angular controller
``` pry
> rails g angular_creator:controller ControllerName
   create  app/assets/javascripts/ng/controllers/controller_name.coffee
> cat app/assets/javascripts/ng/controllers/controller_name.coffee
@APP.controller.ControllerName = [
  "$scope"
  "$attrs"
  ($scope, $attrs) ->
]
```

### generator angular directive
``` pry
> rails g angular_creator:directive DirectiveName
   create  app/assets/javascripts/ng/directives/directive_name.coffee
   create  app/assets/html/directive_name.html.slim
> cat app/assets/javascripts/ng/directives/directive_name.coffee.erb
@APP.directive.DirectiveName = [
  () ->
    restrict: "C" # "ACE"
    # transclude: true    
    replace: true
    templateUrl: '<%= asset_path "directive_name.html" %>'
    # scope:
    #   DirectiveName: '=DirectiveName'
    # controller: [
    #   "$scope"
    #   "$attrs"
    #   ($scope, $attrs) ->
    # ]
    link: ($scope, $element, $attrs) ->
]
> cat app/assets/html/directive_name.html.slim
.directive_name
  | text in DirectiveName directive%
```

### generator angular factory
``` pry
> rails g angular_creator:factory '$factoryName' 
   create  app/assets/javascripts/ng/factories/factory_name.coffee
> cat app/assets/javascripts/ng/factories/factory_name.coffee
@APP.factory.$factoryName = [
  () ->
    $factoryName = {}
]
```

### generator angular filter
``` pry
> rails g angular_creator:filter filter_name
   create  app/assets/javascripts/ng/filters/filter_name.coffee
> cat app/assets/javascripts/ng/filters/filter_name.coffee
@APP.filter.FilterName = [
  ->
    FilterName = (data) ->
      data
]
```

### generator angular service
``` pry
> rails g angular_creator:service Service_Name
   create  app/assets/javascripts/ng/services/service_name.coffe
> cat app/assets/javascripts/ng/services/service_name.coffe
@APP.service.ServiceName = [
  () ->
    ServiceName = {}
]
```