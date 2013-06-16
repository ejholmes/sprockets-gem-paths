# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sprockets/gem_paths/version'

Gem::Specification.new do |spec|
  spec.name          = "sprockets-gem-paths"
  spec.version       = Sprockets::GemPaths::VERSION
  spec.authors       = ["Eric J. Holmes"]
  spec.email         = ["eric@ejholmes.net"]
  spec.description   = %q{Add gem paths to your sprockets environment outside of rails}
  spec.summary       = %q{Add gem paths to your sprockets environment outside of rails}
  spec.homepage      = "https://github.com/ejholmes/sprockets-gem-paths"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sprockets"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
