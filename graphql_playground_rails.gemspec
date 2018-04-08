
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphql_playground/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'graphql_playground_rails'
  spec.version       = GraphqlPlayground::Rails::VERSION
  spec.authors       = ['Radoslav Stankov']
  spec.email         = ['rstankov@gmail.com']

  spec.summary       = 'A mountable GraphQL Playground endpoint for Ruby on Rails'
  spec.description   = 'GraphQL Playground is IDE for better development workflows (GraphQL Subscriptions, interactive docs & collaboration).'
  spec.homepage      = 'https://github.com/RStankov/graphql-playground-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'railties'
  spec.add_runtime_dependency 'sprockets-rails'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '0.54.0'
  spec.add_development_dependency 'rubocop-rspec', '1.25.0'
end
