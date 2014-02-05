# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'has_serialized/matchers/version'

Gem::Specification.new do |spec|
  spec.name          = "has_serialized-matchers"
  spec.version       = HasSerialized::Matchers::VERSION
  spec.authors       = ["Cecille Manalang"]
  spec.email         = ["cecille@onegoodcode.com"]
  spec.summary       = %q{RSpec matchers for `has_serialized`}
  spec.description   = %q{RSpec matchers for `has_serialized`}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'has_serialized', '~> 1.1'
end
