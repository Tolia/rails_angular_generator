module Angular
  class DirectiveGenerator < RailsAngularCreator::FileGenerator   
    def create
      create_directive
      create_template
    end

    private

    def create_directive
      @template_url = "<%= asset_path \"#{generator_file}.html\" %>"
      template "directive.coffee", "#{dir_path}/#{generator_file}.coffee.erb"
    end

    def create_template
      template "directive.slim", "#{::RailsAngularCreator::ASSETS_HTML_DIR}/#{generator_file}.html.slim"
    end

  end
end