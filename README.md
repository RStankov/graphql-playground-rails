[![Code Climate](https://codeclimate.com/github/RStankov/graphql-playground-rails.svg)](https://codeclimate.com/github/RStankov/graphql-playground-rails)
[![Build Status](https://secure.travis-ci.org/RStankov/graphql-playground-rails.svg)](http://travis-ci.org/RStankov/graphql-playground-rails)

# GraphqlPlayground::Rails

`GraphqlPlayground::Rails` is a mountable [GraphQL Playground](https://github.com/graphcool/graphql-playground) endpoint for [Ruby on Rails](http://rubyonrails.org/). [GraphQL Playground](https://github.com/graphcool/graphql-playground) is IDE for better development workflows (GraphQL Subscriptions, interactive docs & collaboration).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'graphql_playground_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install graphql_playground_rails

## Usage

### Mount the Engine

Add the engine to `routes.rb`:

```ruby
# config/routes.rb
Rails.application.routes.draw do
  # ...
  if Rails.env.development?
    mount GraphqlPlayground::Rails::Engine, at: '/graphql/playground', graphql_path: '/graphql'
  end
end
```

- `at:` is the path where [GraphQL Playground](https://github.com/graphcool/graphql-playground) will be served. You can access the IDE by visiting that path.
- `graphql_path:` is the path to the [GraphQL](https://rubygems.org/gems/graphql) endpoint. All queries will send queries to this path. (defaults to `/graphql`)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rstankov/graphql_playground_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GraphqlPlayground::Rails project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/rsatnkov/graphql_playground_rails/blob/master/CODE_OF_CONDUCT.md).
