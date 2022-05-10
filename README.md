# Json Schema Rails Engine

This is a [mountable Rails engine](https://guides.rubyonrails.org/engines.html) aiming to provide the ability to model
[Json Schema](https://json-schema.org/) objects and provide a source to load those schemas by id and reference.

Eventually, there's going to be validation in there, too.

Eventually.

Currently, only tested against [Postgresql](https://www.postgresql.org/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem "json_schema", github: "kryptykphysh/json-schema-rails-engine", branch: "schemas"
```

Note: This is still very much in development

And then execute:
```bash
$ bundle
```

Edit your `config/routes.rb` file to mount the engine at the desired endpoint:

```ruby
mount JsonSchema::Engine, at: "/json_schema"
```

### Database Migrations

Copy the migrations from the engine in to your application.

```bash
bundle exec rails json_schema:install:migrations
```

Then, migrate as normal:

```bash
./bin/rails db:migrate
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
