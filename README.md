# Riley Ipsum, the gem

![Riley Ipsum](http://www.rileyipsum.com/wp-content/themes/boilerplate/images/riley.png "Riley Ipsum")

This gem is based on [Riley Ipsum](http://www.rileyipsum.com), by the indomitable [Tom Bryan](http://www.tombryan.co).

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
# => "these young bucks have never seen a nuclear fucking winter."

# Will combine three lines, separated by commas.
RileyIpsum.generate(:lines => 3)
# => "I know you guys will find it tough without me but I know you have it in you to soldier on in my absence, embrace the cheese, I cry every time I think how much I paid for my first 1GB HDD."
```
