source 'https://rubygems.org'

group :development, :test do
  gem 'metadata-json-lint', '3.0.0'
  gem 'puppetlabs_spec_helper', '2.15.0'
  gem 'rake', '13.0.3'
  gem 'rspec', '3.10.0'
  gem 'rubocop', '0.93.1'
  gem 'rubocop-rspec', '1.44.1'
end

if (puppetversion = ENV['PUPPET_GEM_VERSION'])
  gem 'puppet', puppetversion, require: false
else
  gem 'puppet', require: false
end
