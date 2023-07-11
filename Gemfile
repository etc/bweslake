source 'https://rubygems.org'
ruby "3.2.2"

gem 'nesta', :git => 'https://github.com/gma/nesta.git'

# Use the following instead, for a particular version, eg. 0.9.11
# gem 'nesta', '0.9.11'
#
# Use the following instead, for local changes to Nesta:
# gem 'nesta', :path => '/Users/brad/code/nesta'

# Use the following instead, for a particular GitHub commit (copy the SHA from Github):
# gem 'nesta', :git => 'https://github.com/gma/nesta.git', :ref => '90686e4c14b0088f98f6813ff769047217a078c4'

gem 'kramdown', '2.4.0'
gem 'tilt', '2.1.0'
# Tilt 2.2.0 seems incompatible with Sinatra, generating the following error:
# file_model.rb:2:in `const_get': uninitialized constant Tilt::BlueClothTemplate (NameError)
# Keep trying to remove the line above and see if it works, as time goes on!

gem 'nesta-plugin-maldini', :git => 'https://github.com/etc/nesta-plugin-maldini.git'
# Use the following instead, to try out local changes to Maldini:
# gem 'nesta-plugin-maldini', :path => '/Users/brad/code/nesta-plugin-maldini'
gem 'rack-rewrite', :git => 'https://github.com/jtrupiano/rack-rewrite.git'
gem 'thin'