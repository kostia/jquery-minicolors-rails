$:.push File.expand_path('../lib', __FILE__)

require 'jquery-minicolors-rails/version'

Gem::Specification.new do |gem|
  gem.name = 'jquery-minicolors-rails'
  gem.version = JqueryMinicolorsRails::VERSION
  gem.description = 'This gem embeddes the jQuery colorpicker in the Rails asset pipeline.'
  gem.summary = gem.description
  gem.homepage = 'https://github.com/kostia/jquery-minicolors-rails'
  gem.authors = ['Kostiantyn Kahanskyi']
  gem.email = %w[kostiantyn.kahanskyi@googlemail.com]
  gem.files = Dir['{app,lib,vendor}/**/*'] + %w[Rakefile README.md]
  gem.add_dependency 'rails', '>= 3.2.8'
  gem.add_dependency 'jquery-rails'
  gem.add_development_dependency 'multi_json'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rspec-rails'
  gem.add_development_dependency 'simple_form'
  gem.add_development_dependency 'webrat'
end
