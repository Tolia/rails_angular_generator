module AngularCreator
  class AssetsGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def copy_assets_files
      copy_file "manifest.js",     "#{RailsAngularCreator::ASSETS_JS_DIR}/ng_manifest.js"
      copy_file "init.coffee",     "#{RailsAngularCreator::ANGULAR_DIR}/init.coffee"
      copy_file "settings.coffee", "#{RailsAngularCreator::ANGULAR_DIR}/settings.coffee"
    end

    def create_assets_dirs
      create_angular_dirs
      create_html_dirs
    end

    def copy_initializer_files
      create_file "slim_assets.rb", "config/initializers/slim_assets.rb"
    end

    def complete
      puts "Angular has been installed successfully. You're all ready to go!"
    end

    private

    def create_angular_dirs
      RailsAngularCreator::ANGULAR_DIRS.each do |path, key|
        create_file "#{path}.keep"
      end
    end

    def create_html_dirs
      create_file "#{RailsAngularCreator::ASSETS_HTML_DIR}/.keep"
    end

  end
end