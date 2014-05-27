require "rails/generators"
module RailsAngularCreator
  class FileGenerator < ::Rails::Generators::NamedBase
    def self.source_paths
      paths = self.superclass.source_paths
      paths << File.expand_path("../../generators/angular_creator/#{name.demodulize.gsub("Generator","").downcase}/templates", __FILE__)
      paths.flatten
    end

    def create
      @name = file_name
      template "#{generator}.coffee", "#{dir_path}/#{@name.gsub(/\$/,'')}.coffee"
    end

    private

    def dir_path
      ::RailsAngularCreator::ANGULAR_DIRS[ generator.pluralize.to_sym ]
    end

    def generator
      @generator ||= self.class.name.demodulize.gsub("Generator","").downcase
    end

  end
end