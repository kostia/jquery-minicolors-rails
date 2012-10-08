$:.push File.expand_path('../lib', __FILE__)

require 'jquery-minicolors-rails/version'

Gem::Specification.new do |gem|
  gem.name = 'jquery-minicolors-rails'
  gem.version = JqueryMinicolorsRails::VERSION
  gem.description = 'Colorpicker-plugin for jQuery, integrated in Rails asset pipeline'
  gem.summary = gem.description
  gem.homepage = 'https://github.com/kostia/jquery-minicolors-rails'
  gem.authors = ['Kostiantyn Kahanskyi']
  gem.email = %w[kostiantyn.kahanskyi@googlemail.com]
  gem.files = Dir['{app,lib,vendor}/**/*'] + %w[Rakefile README.md]
  gem.add_dependency 'rails', '~> 3.2.8'
  gem.add_dependency 'jquery-rails'
end
