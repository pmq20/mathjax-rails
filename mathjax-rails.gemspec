# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mathjax/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "mathjax-rails"
  s.version     = Mathjax::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Minqi Pan", "Manu S Ajith", 'Oliver Kuster']
  s.email       = ["pmq2001@gmail.com", "neo@codingarena.in", 'olivervbk@gmail.com']
  s.homepage    = "https://github.com/olivervbk/mathjax-rails"
  s.summary     = "FORK of pmq200/mathjax-rails - a simple gem to integrate MathJax with Rails 3"
  s.description = "This gem maintains MathJax at a system-wide directory."

  s.required_rubygems_version = ">= 1.3.6"
  #s.rubyforge_project         = "mathjax-rails"

  s.add_dependency "railties", ">= 3.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
  s.license      = 'MIT'
  
end
