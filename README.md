# Sprockets::GemPaths

[![Build Status](https://travis-ci.org/ejholmes/sprockets-gem-paths.png?branch=master)](https://travis-ci.org/ejholmes/sprockets-gem-paths)

Adds a `.append_gem_paths` method to `Sprockets::Environment`, which adds paths
to vendored gems (think bourbon), when using sprockets outside of rails.
Extracted from [Middleman](https://github.com/middleman/middleman).

## Installation

Add this line to your application's Gemfile:

    gem 'sprockets-gem-paths'

## Usage

Build your sprockets environment.

```ruby
environment = Sprockets::Environment.new
environment.add_path 'assets'
```

Append paths to gems.

```ruby
environment.append_gem_paths
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
