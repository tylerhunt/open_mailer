# Open Mailer

An Action Mailer delivery method that opens emails locally.

## Usage

When delivering emails, they will be opened using your system’s default email
client (e.g. Mail.app under macOS) without ever actually being sent.

## Installation

Add this line to your application's `Gemfile`:

```ruby
bundle add open_mailer --group development
```

Then add the following line to the `config/environments/development.rb` file in
a Rails app:

```
config.action_mailer.delivery_method = :open_mailer
```

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
