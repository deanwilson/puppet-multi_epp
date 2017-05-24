#!ruby
source 'https://rubygems.org'

group :development, :test do
  gem 'puppetlabs_spec_helper', '2.1.2'
  gem 'rake', '12.0.0'
  gem 'rspec', '3.6.0'
  gem 'rubocop', '0.48.1'
end

if puppetversion = ENV['PUPPET_GEM_VERSION']
  gem 'puppet', puppetversion, require: false
else
  gem 'puppet', require: false
end
