source 'https://rubygems.org'

group :development, :test do
  gem 'bundler-stats', '2.4.0'
  gem 'metadata-json-lint', '4.2.1'
  gem 'puppetlabs_spec_helper', '~> 8.0.0'
  gem 'rake', '13.3.1'
  gem 'rspec', '3.13.2'
  gem 'rubocop', '~> 1.81.1', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', '~> 3.7.0', require: false
end

if (puppetversion = ENV.fetch('PUPPET_GEM_VERSION', nil))
  gem 'puppet', puppetversion, require: false
else
  gem 'puppet', require: false
end
