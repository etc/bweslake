require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require 'nesta/app'

Nesta::App.root = ::File.expand_path('.', ::File.dirname(__FILE__))
use Rack::Rewrite do
  r301 %r{/research(\?.*)}, '/cv$1'
end
run Nesta::App
