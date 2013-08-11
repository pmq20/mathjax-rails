# MathjaxRails

A Ruby gem for including mathjax for Rails 3.x or above apps

## Installation

Add this line to your application's Gemfile:

    gem 'mathjax_rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mathjax_rails

## Usage


add the following to config/routes.rb (you can change the name of course)

``` ruby
mathjax 'mathjax'
```

add the script tag inside app/views/layouts/application.html.erb

``` rhtml
<%= mathjax_tag %>
```  

and it is done!

To try it, write a simple formula, for example,

  \[\int_a^b f(x) dx=F(b)-F(a)\]


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request