# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ar_validity_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "ar_validity_checker"
  spec.version       = ArValidityChecker::VERSION
  spec.authors       = ["Jason Olim"]
  spec.email         = ["jason@olim.org"]

  spec.summary       = %q{Run through each of your models and ask valid?.}
  spec.homepage      = "https://github.com/jolim/ar_validity_checker"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
