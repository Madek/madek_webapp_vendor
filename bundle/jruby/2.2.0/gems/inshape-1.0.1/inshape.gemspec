# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inshape/version'

Gem::Specification.new do |spec|
  spec.name          = "inshape"
  spec.version       = InShape::VERSION
  spec.authors       = ["Thomas Schank"]
  spec.email         = ["DrTom@schank.ch"]

  spec.summary       = %q{Computes and evaluates memory usage under JRuby.}
  spec.description   = %q{Computes and evaluates memory usage under JRuby.}
  spec.homepage      = 'https://github.com/DrTom/inshape_ruby'


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "actionview", ">= 4.0", "< 5.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"


end
