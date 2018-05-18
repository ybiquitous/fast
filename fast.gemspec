# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'ffast'
  spec.version       = '0.0.2'
  spec.required_ruby_version = '>= 2.3'
  spec.authors       = ['Jônatas Davi Paganini']
  spec.email         = ['jonatas.paganini@toptal.com']

  spec.summary       = 'FAST: Find by AST.'
  spec.description   = 'Allow you to search for code using node pattern syntax.'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = ['fast', 'fast-experiment']
  spec.require_paths = %w[lib experiments]

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'coderay'
  spec.add_dependency 'parser'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
end
