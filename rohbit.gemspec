# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rohbit/version'

Gem::Specification.new do |spec|
  spec.name          = "rohbit"
  spec.version       = Rohbit::VERSION
  spec.authors       = ["J Irving"]
  spec.email         = ["j@lollyshouse.ca"]
  spec.description   = %q{IRC bot based on the cinch toolkit}
  spec.summary       = %q{IRC bot}
  spec.homepage      = "http://github.com/j0ni/rohbit"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "cinch"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
