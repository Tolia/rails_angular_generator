module AngularCreator
  class DirectiveGenerator < RailsAngularCreator::FileGenerator   
    def create
      create_directive
      create_template
    end

    private

    def create_directive
      @name = file_name
      @template_url = "<%= asset_path \"#{@name}.html\" %>"
      template "directive.coffee", "#{dir_path}/#{@name}.coffee.erb"
    end

    def create_template
      @name = file_name
      template "directive.slim",   "#{RailsAngularCreator::ASSETS_HTML_DIR}/#{@name}.html.slim"
    end

  end
end