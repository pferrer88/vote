require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']
source 'http://rubygems.org'
gem 'rails', '3.1.3'
gem 'mysql2'

gem 'json'
gem 'sass-rails',   '~> 3.1.5'

group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
	gem 'sass-rails', '~> 3.1.5'
end
gem 'jquery-rails'

if HOST_OS =~ /linux/i
  gem 'therubyracer', '>= 0.9.8'
end
gem "rspec-rails", ">= 2.8.0.rc1", :group => [:development, :test]
gem "factory_girl_rails", :group => :test
gem "cucumber-rails", ">= 1.2.0", :group => :test
gem "capybara", ">= 1.1.2", :group => :test
gem "database_cleaner", ">= 0.7.0", :group => :test
gem "launchy", ">= 2.0.5", :group => :test
gem "guard", ">= 0.6.2", :group => :development

case HOST_OS
  when /darwin/i
    gem 'rb-fsevent', :group => :development
    gem 'growl', :group => :development
  when /linux/i
    gem 'libnotify', :group => :development
    gem 'rb-inotify', :group => :development
  when /mswin|windows/i
    gem 'rb-fchange', :group => :development
    gem 'win32console', :group => :development
    gem 'rb-notifu', :group => :development
end
gem "guard-bundler", ">= 0.1.3", :group => :development
gem "guard-rails", ">= 0.0.3", :group => :development
gem "guard-livereload", ">= 0.3.0", :group => :development
gem "guard-rspec", ">= 0.4.3", :group => :development
gem "guard-cucumber", ">= 0.6.1", :group => :development

gem "devise", :git => "https://github.com/plataformatec/devise.git"
gem "omniauth-facebook"
gem "fb_graph"
gem 'devise_invitable', '~> 1.0.0'
gem 'best_in_place'

gem 'forem', :git => "git://github.com/radar/forem.git"
gem 'forem-redcarpet', '~> 1.0.0'
# gem 'forem-theme-twist', :git => "git@github.com:pferrer88/forem-theme-twist.git"
gem 'forem-theme-orange', :git => "git://github.com/radar/forem-theme-orange.git"

gem 'activeadmin', :git => 'https://github.com/gregbell/active_admin.git'
# gem "rmagick"
gem "mini_magick"
gem "ckeditor", "3.7.0.rc3"
gem "carrierwave"

gem 'twitter-bootstrap-rails', :git => 'http://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'haml'
gem 'simple_form', :git => 'https://github.com/plataformatec/simple_form.git'
gem 'country_select'

gem 'rack-pjax'
gem "aws-ses", :require => 'aws/ses'

