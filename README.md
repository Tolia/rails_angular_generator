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
-  [angular_creator:assets](#init-angular-assets)
-  [angular_creator:controller](#generator-angular-controller)
-  [angular_creator:directive](#generator-angular-directive)
-  [angular_creator:factory](#generator-angular-factory)
-  [angular_creator:filter](#generator-angular-filter)
-  [angular_creator:service](#generator-angular-service)

### init angular assets
``` ruby
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
``` ruby
> rails g angular_creator:controller controller_name
   create  app/assets/javascripts/ng/controllers/controller_name.coffee
```

### generator angular directive
``` ruby
> rails g angular_creator:directive directive_name
   create  app/assets/javascripts/ng/directives/directive_name.coffee
   create  app/assets/html/directive_name.html.slim
```

### generator angular factory
``` ruby
> rails g angular_creator:factory factory_name  
   create  app/assets/javascripts/ng/factories/factory_name.coffee
```

### generator angular filter
``` ruby
> rails g angular_creator:filter filter_name
   create  app/assets/javascripts/ng/filters/filter_name.coffee
```

### generator angular service‎
``` ruby
> rails g angular_creator:service‎ fservice‎_name
   create  app/assets/javascripts/ng/services‎/service_name.coffe
```
