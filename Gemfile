source 'https://rubygems.org'

group :development, :test do
  gem 'bundler-stats', '2.4.0'
  gem 'metadata-json-lint', '4.0.0'
  gem 'puppetlabs_spec_helper', '~> 7.0.0'
  gem 'rake', '13.1.0'
  gem 'rspec', '3.12.0'
  gem 'rubocop', '~> 1.60.2', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', '~> 2.25.0', require: false
end

if (puppetversion = ENV.fetch('PUPPET_GEM_VERSION', nil))
  gem 'puppet', puppetversion, require: false
else
  gem 'puppet', require: false
end
