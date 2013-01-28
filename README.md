# QuickConfig

A quick and easy way to group and access your application configuration data.

## Installation

Add this line to your application's Gemfile:

    gem 'quick_config'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install quick_config

## Usage

<pre>
#Include the gem.
<code>
require 'quick_config'
</code></pre>

<pre>
#Set property name/value pairs.
<code>
QuickConfig.set do
  property :name, "K"
  property :age, 12  
end
</code></pre>

<pre>
#Read out previously set property
<code>
puts QuickConfig.name
puts QuickConfig.age
</code></pre>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
