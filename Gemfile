#!ruby
source 'https://rubygems.org'

group :development, :test do
  gem 'metadata-json-lint', '2.2.0'
  gem 'puppetlabs_spec_helper', '2.1.2'
  gem 'rake', '13.0.0'
  gem 'rspec', '3.9.0'
  gem 'rubocop', '0.75.1'
end

if puppetversion = ENV['PUPPET_GEM_VERSION']
  gem 'puppet', puppetversion, require: false
else
  gem 'puppet', require: false
end
