# IsAvailable

Simply check if a domain has been registered ( or if it is resolvable ).

## Installation

    $ gem install is_available

## Usage

When you install `is_available` you install a Ruby library and command-line application.

### Library

```ruby
require "is_available"

IsAvailable.registered?("www-facebook.com")
# => true

IsAvailable.resolvable?("www-facebook.com")
# => false
```

### CLI Application

```shell
> is_available --check www-facebook.com
www-facebook.com isn't available!
> is_available --check wwwwww-facebook.com
www-facebook.com is available!
```

```shell
> is_available --registered www-facebook.com
www-facebook.com is registered!
> is_available --registered --true-or-false www-facebook.com
true
> is_available --registered wwwww-facebook.com
www-facebook.com isn't registered!
> is_available --registered --true-or-false wwwww-facebook.com
false
```

```shell
> is_available --resolvable www-facebook.com
www-facebook.com isn't resolvable!
> is_available ---resolvable --true-or-false www-facebook.com
false
> is_available --resolvable wwwww-facebook.com
www-facebook.com isn't resolvable!
> is_available ---resolvable --true-or-false wwwww-facebook.com
false
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the IsAvailable project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/is_available/blob/master/CODE_OF_CONDUCT.md).
