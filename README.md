# Freakonomics

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
freak latest path_to_all_episodes
```

### Download all episodes

You can download all episodes via:

```ruby
freak download --all
```
or

```ruby
freak download -a
```

You can also specify a download path: 

```ruby
freak download --all path_to_all_episodes
```

Note: The directory will be created if it does not exist.

### Download single episode

By name:

```ruby
freak download --name "Do More Expensive Wines Taste Better?"
```

By release date:

```ruby
freak download --date "01 Dec 2010"
```

## To do

[] Download latest
[] Download latest with path
[] Download all
[] Download all with path
[] Download single episode by name
[] Download single episode by release date


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/freakonomics.

