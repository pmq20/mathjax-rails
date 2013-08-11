# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mathjax_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "mathjax_rails"
  spec.version       = MathjaxRails::VERSION
  spec.authors       = ["Manu S Ajith"]
  spec.email         = ["neo@codingarena.in"]
  spec.description   = %q{A Ruby gem for including mathjax rails in your rails 3.x or above apps}
  spec.summary       = %q{Mathjax for Rails}
  spec.homepage      = "http://github.com/manusajith/mathjax_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
