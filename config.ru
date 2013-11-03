require 'rubygems'
require 'bundler/setup'
require 'rack/rewrite'

Bundler.require(:default)

use Rack::Rewrite do
  r301 %r{/research(\?.*)}, '/cv\#publications$1'
end

require 'nesta/app'

Nesta::App.root = ::File.expand_path('.', ::File.dirname(__FILE__))
run Nesta::App
