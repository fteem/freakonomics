# Freakonomics

[![Code Climate](https://codeclimate.com/github/fteem/freakonomics/badges/gpa.svg)](https://codeclimate.com/github/fteem/freakonomics)
[![Test Coverage](https://codeclimate.com/github/fteem/freakonomics/badges/coverage.svg)](https://codeclimate.com/github/fteem/freakonomics/coverage)
[![Build Status](https://travis-ci.org/fteem/freakonomics.svg)](https://travis-ci.org/fteem/freakonomics)

Freakonomics is a CLI app built with Ruby. It's purpose is to download episodes of 
one of my favourite podcasts - [Freakonomics](http://freakonomics.com).

## Installation

Install it yourself as:

    $ gem install freakonomics

## Usage

### Download latest episode

You can download the latest episode via:

```ruby
freak latest
```

You can also specify a download path: 

```ruby
freak latest -p/--path "freakonomics_episodes/new"
```

### Download all episodes

You can download all episodes via:

```ruby
freak all
```

You can also specify a download path: 

```ruby
freak all -p/--path path_to_all_episodes
```

Note: The directory will be created if it does not exist.

### Download single episode

By name:

```ruby
freak episode --name "Do More Expensive Wines Taste Better?"
```

By release date:

```ruby
freak episode --date "01 Dec 2010"
```

Also, works with path:

```ruby
freak episode --date "01 Dec 2010" --path path_to_episodes
```

```ruby
freak episode --name "Do More Expensive Wines Taste Better?" --path path_to_episodes
```

## To do

- [x] Download latest
- [x] Download latest with path
- [x] Download all
- [x] Download all with path
- [x] Download single episode by name
- [x] Download single episode by release date
- [x] Download single episode by name with path
- [x] Download single episode by release date with path
- [ ] Test coverage!


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fteem/freakonomics.

## License

See [LICENSE](https://github.com/fteem/freakonomics/blob/master/LICENSE).
