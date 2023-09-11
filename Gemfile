source 'https://rubygems.org'

group :development, :test do
  gem 'bundler-stats', '2.4.0'
  gem 'metadata-json-lint', '3.0.3'
  gem 'puppetlabs_spec_helper', '~> 6.0.0'
  gem 'rake', '13.0.6'
  gem 'rspec', '3.12.0'
  gem 'rubocop', '~> 1.56.0', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', '~> 2.24.0', require: false
end

if (puppetversion = ENV.fetch('PUPPET_GEM_VERSION', nil))
  gem 'puppet', puppetversion, require: false
else
  gem 'puppet', require: false
end
