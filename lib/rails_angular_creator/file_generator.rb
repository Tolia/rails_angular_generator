require "rails/generators"
module RailsAngularCreator
  class FileGenerator < ::Rails::Generators::NamedBase
    def self.source_paths
      paths = self.superclass.source_paths
      paths << File.expand_path("../../generators/angular/#{name.demodulize.gsub("Generator","").downcase}/templates", __FILE__)
      paths.flatten
    end

    def create
      template "#{generator_name}.coffee", "#{dir_path}/#{generator_file}.coffee"
    end

    private

    def generator_file
      "#{ class_name.gsub(/\$/,'').underscore }"
    end

    def dir_path
      ::RailsAngularCreator::ANGULAR_DIRS[ generator_name.pluralize.to_sym ]
    end

    def generator_name
      @generator ||= self.class.name.demodulize.gsub("Generator","").downcase
    end

  end
end