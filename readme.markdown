![Algorithmia for Ruby](algorithmia.png)

# Ruby Wrapper for Algorithmia

Looks very interesting, so I quickly threw together an awesome Ruby wrapper to interact with [Algorithmia.com](http://algorithmia.com).

### Installation

```
# By your command line.
$ gem install algorithmia

# Alternatively, through your Gemfile.
gem 'algorithmia'
```

### Documentation
Keeping it simple for now. But it's super easy to make a request to Algorithmia:

```ruby
require "algorithmia"

# Your API key. Get it from your dashboard on Algorithmia.com
Algorithmia.api_key = "[INSERT API KEY]"

query = Algorithmia.call("kenny/Factor", 29)
# Example for algorithm: https://algorithmia.com/algorithms/kenny/Factor
# => #<Algorithmia::Result:0x007fad12c4fc68 @json={:duration=>0.035231213000000004, :result=>[29]}>

query.result # => [29]
query.duration # => 0.035231213000000004
```

See full [Algorithmia.com API docs by clicking here.](https://algorithmia.com/docs/api#curl).

### Who made this?
[Bilawal Hameed](http://github.com/bih). Released freely under the [MIT License](http://bih.mit-license.org/).
