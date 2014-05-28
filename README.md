# rails_angular_generator

generate a angular distribution for your rails app

## Installation

First start by adding this gem to your Gemfile:
``` rb
gem "rails_angular_generator", git: 'Tolia/rails_angular_generator'
```
And then execute
``` rs
bundle
```


## Usage
``` rs
> rails g
Angular:
-  angular:assets
-  angular:controller
-  angular:directive
-  angular:factory
-  angular:filter
-  angular:service‎
```

### init angular assets
``` rs
> rails g angular:assets
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
``` rs
> rails g angular:controller ControllerName
   create  app/assets/javascripts/ng/controllers/controller_name.coffee
```
``` coffee
> cat app/assets/javascripts/ng/controllers/controller_name.coffee
@APP.controller.ControllerName = [
  "$scope"
  "$attrs"
  ($scope, $attrs) ->
]
```

### generator angular directive
``` rs
> rails g angular:directive DirectiveName
   create  app/assets/javascripts/ng/directives/directive_name.coffee
   create  app/assets/html/directive_name.html.slim
```
``` coffee
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
```
``` haml
> cat app/assets/html/directive_name.html.slim
.directive_name
  | text in DirectiveName directive
```

### generator angular factory
``` rs
> rails g angular:factory '$factoryName' 
   create  app/assets/javascripts/ng/factories/factory_name.coffee
```
``` coffee
> cat app/assets/javascripts/ng/factories/factory_name.coffee
@APP.factory.$factoryName = [
  () ->
    $factoryName = {}
]
```

### generator angular filter
``` rs
> rails g angular:filter filter_name
   create  app/assets/javascripts/ng/filters/filter_name.coffee
```
``` coffee
> cat app/assets/javascripts/ng/filters/filter_name.coffee
@APP.filter.FilterName = [
  ->
    FilterName = (data) ->
      data
]
```

### generator angular service
``` rs
> rails g angular:service Service_Name
   create  app/assets/javascripts/ng/services/service_name.coffee
```
``` coffee
> cat app/assets/javascripts/ng/services/service_name.coffee
@APP.service.ServiceName = [
  () ->
    ServiceName = {}
]
```
