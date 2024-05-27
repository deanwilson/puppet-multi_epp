source 'https://rubygems.org'

group :development, :test do
  gem 'bundler-stats', '2.4.0'
  gem 'metadata-json-lint', '4.0.0'
  gem 'puppetlabs_spec_helper', '~> 7.3.0'
  gem 'rake', '13.2.1'
  gem 'rspec', '3.13.0'
  gem 'rubocop', '~> 1.63.5', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', '~> 2.29.1', require: false
end

if (puppetversion = ENV.fetch('PUPPET_GEM_VERSION', nil))
  gem 'puppet', puppetversion, require: false
else
  gem 'puppet', require: false
end
