source 'https://rubygems.org'

group :development, :test do
  gem 'bundler-stats', '2.3.0'
  gem 'metadata-json-lint', '3.0.1'
  gem 'puppetlabs_spec_helper', '4.0.1'
  gem 'rake', '13.0.6'
  gem 'rspec', '3.10.0'
  gem 'rubocop', '~> 1.0'
  gem 'rubocop-rspec', '~> 2.8.0'
end

if (puppetversion = ENV['PUPPET_GEM_VERSION'])
  gem 'puppet', puppetversion, require: false
else
  gem 'puppet', require: false
end
