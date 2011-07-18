# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mathjax/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "mathjax-rails"
  s.version     = Mathjax::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Minqi Pan"]
  s.email       = ["pmq2001@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/mathjax-rails"
  s.summary     = "Using MathJax with Rails 3"
  s.description = "Using MathJax with Rails 3"

  s.required_rubygems_version = ">= 1.3.6"
  #s.rubyforge_project         = "mathjax-rails"

  s.add_dependency "railties", "~> 3.0"
  s.add_development_dependency "rails",   "~> 3.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
  
  s.extensions = "unzip.rb"
end