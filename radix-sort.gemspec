# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'radix/sort/version'

Gem::Specification.new do |spec|
  spec.name    = "radix-sort"
  spec.version = Radix::Sort::VERSION
  spec.authors = ["Manther"]
  spec.email   = ["jason.manther.young@gmail.com"]

  spec.description = %q{Perfomre radix-sort on numeric array.}
  spec.summary     = %q{Perfomre radix-sort on numeric array.}
  spec.homepage    = "https://github.com/Manther/radix-sort"
  spec.license     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
