# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bazinga/version'

Gem::Specification.new do |spec|
  spec.name          = "bazinga"
  spec.version       = Bazinga::VERSION
  spec.authors       = ["Ankur Goel"]
  spec.email         = ["ankurgel@gmail.com"]
  spec.summary       = %q{Saving rails console from devs}
  spec.description   = %q{Saving rails console from devs}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
