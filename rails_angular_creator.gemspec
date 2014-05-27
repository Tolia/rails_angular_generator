$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_angular_creator"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_angular_initializer"
  s.version     = RailsAngularCreator::VERSION
  s.authors     = ["Tolia"]
  s.email       = ["toliademidov@gmail.com"]
  s.homepage    = "http://github.com/Tolia/rails_angular_creator"
  s.summary     = "angular initializer"
  s.description = "angular initializer"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3"
end
