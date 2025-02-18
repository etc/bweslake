# Use the app.rb file to load Ruby code, modify or extend the models, or
# do whatever else you fancy when the theme is loaded.

module Nesta
  class App
    # Uncomment the Rack::Static line below if your theme has assets
    # (i.e images or JavaScript).
    #
    # Put your assets in themes/parallelist/public/parallelist.
    #
    # use Rack::Static, :urls => ["/parallelist"], :root => "themes/parallelist/public"

    helpers do

      # Configure kramdown
      require 'tilt/kramdown'

      # Use kramdown for Markdown in HAML files
      module Haml::Filters
        remove_filter("Markdown")
        register_tilt_filter "Markdown", :template_class => Tilt::KramdownTemplate
      end

      # Use kramdown for Markdown in markdown files      
      Tilt.register Tilt::KramdownTemplate, 'mdown'
      Tilt.register Tilt::KramdownTemplate, 'md'
      
      # Use Kramdown for default Markdown processing.
      Tilt.prefer Tilt::KramdownTemplate

    end

    # Something about the new versions of sinatra and rack-protection seems to require the following
    # See: https://github.com/ytti/oxidized/issues/3340
    set :host_authorization, { permitted_hosts: [] }

    # Add new routes here.
  end
end