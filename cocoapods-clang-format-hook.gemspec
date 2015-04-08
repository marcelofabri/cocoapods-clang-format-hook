# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-clang-format-hook/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-clang-format-hook'
  spec.version       = CocoapodsClangFormatHook::VERSION
  spec.authors       = ['Marcelo Fabri']
  spec.email         = ['me@marcelofabri.com']
  spec.description   = %q{Easily setup a git pre-commit hook to validate your code.}
  spec.summary       = %q{A CocoaPods plugin to easily setup a git pre-commit hook to validate your code using clang-format.}
  spec.homepage      = 'https://github.com/marcelofabri/cocoapods-clang-format-hook '
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'pygments.rb', '~> 0.6'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
