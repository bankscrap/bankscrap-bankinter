# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bankscrap/bankinter/version'

Gem::Specification.new do |spec|
  spec.name          = 'bankscrap-bankinter'
  spec.version       = Bankscrap::Bankinter::VERSION
  spec.authors       = ['Ismael Sánchez']
  spec.email         = ['root@ismagnu.com']
  spec.summary       = 'Bankinter adapter for Bankscrap'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'bankscrap', '~> 1.0'
  spec.add_runtime_dependency 'nokogiri',  '~> 1.6'
  spec.add_runtime_dependency 'execjs',    '~> 2.2'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake',    '~> 10.0'
end
