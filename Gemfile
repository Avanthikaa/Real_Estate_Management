source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.10'
# Use sqlite3 as the database for Active Record

#gem 'rspec-rails', '~> 3.5'

#gem 'pg', '~> 0.20'

group :production do
 gem 'pg', '~> 0.20'
 gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'

  #gem 'rspec-core', '2.14.7'
  #gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers'
    #require: 'rspec/rails'
#, '>= 2.0.0.beta'
end

group :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'ffaker'
  gem 'factory_girl_rails', '~> 4.0'
  #gem 'rspec'
  gem 'rspec-rails',  '>= 2.0.0.beta'
  gem 'shoulda-matchers', '~> 3.1'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

gem 'rb-readline'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

#gem "bootstrap_form", ">= 4.0.0.alpha6"

# Adding Carrierwave gem to upload images
gem 'carrierwave'

#Adding datatables to show structured details
gem 'jquery-datatables-rails', git: 'git://github.com/rweng/jquery-datatables-rails.git'

#Validate Url
gem 'validate_url'

gem 'debase'

gem 'ruby-debug-ide'