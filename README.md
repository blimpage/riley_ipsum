# Riley Ipsum, the gem

This gem is based on [Warren Ipsum](https://github.com/vonconrad/warren_ipsum), by the inimitable [Sebastian von Conrad](http://www.vonconrad.com/). It's significantly more [Riley](http://rilstix.com/)-flavoured than its predecessor.

## Installation

In your Gemfile:

```ruby
gem 'riley_ipsum'
```

Or in your terminal:

```shell
gem install riley_ipsum
```

## Usage

```ruby
require 'riley_ipsum'

# Will generate one line.
RileyIpsum.generate
# => "Instead of trivia questions under beer lids, why not thousands of tiny spiders?"

# Will combine three lines, separated by commas.
RileyIpsum.generate(lines: 3)
# => "thanks buddy guy pal, i'm white trash btw, they're desperately trying to ape the big beat sound that chemical brothers/groove armada nailed."
```
