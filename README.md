# Faux::Database

This gem is a barebones toolset for generating a sample database based on a Rails project.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faux-database'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install faux-database

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

Gem is developed using ruby 3 and Rails 7. YMMV

## Sample App Creation

```bash
rails new pets_api --api --skip-git --skip-keeps --skip-test --skip-active-storage --skip-active-cable --skip-asset-pipeline --skip-javascript --skip-action-text --skip-action-mailer --skip-action-mailbox -d postgresql && cd pets_api
rails db:create
rails generate scaffold User username:string email:string password:string profile_picture:string bio:text
rails generate scaffold Pet user:references name:string species:string breed:string age:integer profile_picture:string
rails generate scaffold Post user:references pet:references content:text image:string
rails generate scaffold Comment post:references user:references content:text
rails generate scaffold Like user:references post:references
rails db:migrate
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/faux-database.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
