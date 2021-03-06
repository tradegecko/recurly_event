# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'recurly_event/version'

Gem::Specification.new do |spec|
  spec.name          = "recurly_event"
  spec.version       = RecurlyEvent::VERSION
  spec.authors       = ["Ejay Canaria"]
  spec.email         = ["ejaypcanaria@gmail.com"]

  spec.summary       = %q{Simple DSL to utilize Recurly webhook inside a Rails application}
  spec.homepage      = "https://github.com/ejaypcanaria/recurly_event"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 3.1"

  spec.add_development_dependency "codeclimate-test-reporter"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
