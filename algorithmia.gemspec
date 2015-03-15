# -*- encoding: utf-8 -*-

# Algorithmia Ruby wrapper.
# Released under the MIT License
# http://github.com/bih/algorithmia

$:.push File.expand_path("../lib", __FILE__)
require "algorithmia/version"

Gem::Specification.new do |spec|
  spec.name          = 'algorithmia'
  spec.version       = Algorithmia::VERSION
  spec.required_ruby_version = '>= 2.0.0'
  spec.license       = 'MIT'
  spec.summary       = "Ruby library for interacting with Algorithmia.com"
  spec.description   = "Interact with awesome algorithms created by academics through Algorithmia.com through Ruby."
  spec.authors       = ["Bilawal Hameed"]
  spec.email         = 'bilawal@studenthack.com'
  spec.homepage      = 'http://github.com/bih/algorithmia'

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths = ["lib"]
  
  spec.add_dependency "rake", "~> 10.4"
  spec.add_dependency "json", "~> 1.8"
  spec.add_dependency "httparty", "~> 0.13.1"

  spec.add_development_dependency "ripl", "~> 0.7"
end