# Ruboty::Esa

esa.io client via Ruboty.

## Installation

```ruby
# Gemfile
gem 'ruboty-esa'

# Environment Variable
ESA_TEAM=your_team
ESA_TOKEN=your_token
```

## Usage

```
@ruboty create_post { "name": "path/to/category/title #tag", "body_md": "# header\ntext" }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kokuyouwind/ruboty-esa.
