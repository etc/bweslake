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

    Encoding.default_external = "UTF-8"

    helpers do
      # Use Kramdown for Markdown processing.
      Tilt.prefer Tilt::KramdownTemplate
    end

    # Add new routes here.
  end
end