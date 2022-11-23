require 'rubygems'
require 'bundler/setup'
require 'rack/rewrite'

Bundler.require(:default)

use Rack::Rewrite do

  # Unless working locally, ensure site is served at http://bweslake.org
  # unless ENV['RACK_ENV'] == 'development'
  #  r301 %r{.*}, 'http://bweslake.org$&',
  #    :if => Proc.new { |rack_env| rack_env['SERVER_NAME'] != 'bweslake.org' }
  #end

  # Redirect old research page to publications
  r301 '/research', '/cv#publications'

end

require 'nesta/app'

Nesta::App.root = ::File.expand_path('.', ::File.dirname(__FILE__))
run Nesta::App
