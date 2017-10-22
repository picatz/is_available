# 🙈  Is Available

Simply check if a domain has been registered ( or if it is resolvable ) to determine if it's available.

## Installation

    $ gem install is_available

## Usage

When you install `is_available` you install a Ruby library and command-line application.

### Library

```ruby
require "is_available"

IsAvailable.available?("www-facebook.com")
# => false

IsAvailable.registered?("www-facebook.com")
# => true

IsAvailable.resolvable?("www-facebook.com")
# => false
```

### CLI Application

```shell
> is_available --check www-facebook.com
www-facebook.com is not available!
> is_available --check wwwwww-facebook.com
www-facebook.com is available!
> is_available --registered --true-or-false www-facebook.com
false
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the IsAvailable project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/is_available/blob/master/CODE_OF_CONDUCT.md).
