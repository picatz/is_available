# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "is_available/version"

Gem::Specification.new do |spec|
  spec.name          = "is_available"
  spec.version       = IsAvailable::VERSION
  spec.authors       = ["Kent 'picat' Gruber"]
  spec.email         = ["kgruber1@emich.edu"]

  spec.summary       = %q{Simply check if a domain has been registered ( or if it is resolvable ) to determine if it's available.}
  #spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/picatz/is_available"
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*.rb']
  spec.bindir        = 'bin'
  spec.executable    = "is_available"
  spec.require_paths = ['lib']
  
  spec.add_dependency "unirest"
  spec.add_dependency "command_lion"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
