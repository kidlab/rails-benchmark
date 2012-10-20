source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'  
end

gem 'jquery-rails'

group :development do
  gem 'sqlite3'
  gem 'execjs'
  gem 'therubyracer'

  # For HAML
  gem 'ruby_parser', '>= 2.3.1'
  gem "hpricot", ">= 0.8.5"
end

gem 'jquery-rails'

gem 'newrelic_rpm'

gem 'thin'
gem 'rainbows'

gem 'pg'

# For async support
gem 'rack-fiber_pool', :require => 'rack/fiber_pool'
gem 'eventmachine', '>= 1.0.0'
gem 'em-postgresql-adapter', :git => 'git://github.com/leftbee/em-postgresql-adapter.git'
gem 'em-synchrony', :git => 'git://github.com/igrigorik/em-synchrony.git',
                    :require => ['em-synchrony',
                                 'em-synchrony/activerecord']
gem 'em-http-request', :require => 'em-http'
