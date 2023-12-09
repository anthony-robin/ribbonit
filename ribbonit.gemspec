# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ribbonit/version'

Gem::Specification.new do |spec|
  spec.name          = 'ribbonit'
  spec.version       = Ribbonit::VERSION
  spec.authors       = ['Anthony Robin']
  spec.email         = ['contact@anthony-robin.fr']

  spec.summary       = 'Display Ribbon with Rails env'
  spec.description   = 'Display an elegant Github like ribbon to your Rails application showing environment informations (Rails environment, Ruby version, Rails version, ...)'
  spec.homepage      = 'https://github.com/anthony-robin/ribbonit'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails'

  spec.add_development_dependency 'bundler', '>= 2.2.33'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.6'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
end
