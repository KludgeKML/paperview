# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paperview/version'

Gem::Specification.new do |spec|
  spec.name          = "paperview"
  spec.version       = Paperview::VERSION
  spec.authors       = ["Keith Lawrence"]
  spec.email         = ["keith@kludge.co.uk"]
  spec.summary       = %q{Provides embedded PaperTrail logs in a page}
  spec.description   = %q{A div with the class "papertrail-view", with a few data- attributes, will be replaced with a log div}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
