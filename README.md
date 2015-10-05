# Warren Ipsum, the gem

![Warren Ipsum](http://www.warrenipsum.com/wp-content/themes/boilerplate/images/warren.png "Warren Ipsum")

This gem is based on [Warren Ipsum](http://www.warrenipsum.com), by the indomitable [Tom Bryan](http://www.tombryan.co).

## Installation

In your Gemfile:

```ruby
gem 'warren_ipsum'
```

Or in your terminal:

```shell
gem install warren_ipsum
```

## Usage

```ruby
require 'warren_ipsum'

# Will generate one line.
WarrenIpsum.generate
# => "these young bucks have never seen a nuclear fucking winter."

# Will combine three lines, separated by commas.
WarrenIpsum.generate(:lines => 3)
# => "I know you guys will find it tough without me but I know you have it in you to soldier on in my absence, embrace the cheese, I cry every time I think how much I paid for my first 1GB HDD."
```
