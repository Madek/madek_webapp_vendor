# InShape

Computes and evaluates memory usage under JRuby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'inshape'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inshape

## Usage

```
drtom@nx-18122:~/…ing/ROR/inshape$ bundle exec pry
[1] pry(main)> require 'InShape'
=> true
[2] pry(main)> InShape::Memory.status
=> #<OpenStruct is_ok=true, content={"memory"=>{"Max"=>"445 MB", "Allocated"=>"445 MB", "Used"=>"129 MB", "Usage"=>0.29, "OK?"=>true}}>
```
