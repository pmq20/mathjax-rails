# MathJax-Rails

We are living in an age where displaying math on web pages will never be hard - thanks to the great work of [MathJax](https://github.com/mathjax/MathJax).

To quote the description from it's official website,

  > [MathJax](https://github.com/mathjax/MathJax) is an open source JavaScript display engine for mathematics that works in all modern browsers.
  >
  > No more setup for readers. No more browser plugins. No more font installations… It just works.

## Why bother with another gem?

Integrating MathJax into a rails project, however, could be a pain. MathJax is HUGE. It makes your project folder swollen, due to the excessive amount of files contained in this package. Including mathjax inside your developing directory makes your TextMate less responsive; when TextMate loses and then regains focus, it will scan the whole directory structure for changes.

Another problem is where to put it? `public` does not seem to be the best practice, since beginning with rails 3.1 `public` is by default ignored in production environment. Plus, it is big; when using git it leaves you no choice but to throw mathjax inside .gitignore, which makes sharing across developers less painless.

## So?

This is when mathjax-rails comes into play!

* It maintains MathJax as a system-wide directory.
* By simply including mathjax-rails in your Gemfile, all your rails apps can benefit from MathJax immediately.
* You can control the version of MathJax through the version of mathjax-rails, which is done simply via bundler.

## Which version of MathJax does it use?

We maintain mathjax-rails to always use the latest version of stable MathJax releases.

To see the actual version, check the constant Mathjax::Rails::MATHJAXVERSION.

## Usage

add this line to your Gemfile:

	gem 'mathjax-rails'

then:

	$ bundle install

## The other gem

The new gem is more recently maintained.Thank you Manu S Ajith.

[![Gem Version](https://badge.fury.io/rb/mathjax-rails.png)](http://badge.fury.io/rb/mathjax-rails)
# MathjaxRails

A Ruby gem for including mathjax for Rails 3.x or above apps

## Installation

Add this line to your application's Gemfile:

    gem 'mathjax-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mathjax-rails

## Usage


add the following to config/routes.rb (you can change the name of course):

``` ruby
mathjax 'mathjax'
```

add the script tag inside app/views/layouts/application.html.erb:

``` rhtml
<%= mathjax_tag %>
```

and you're done!

To try it, write a simple formula, for example:

	\[\int_a^b f(x) dx=F(b)-F(a)\]

## Configuration

By default, the `tex-chtml-full.js` component is loaded.

If you want to load another component file, say `tex-svg-full.js`:

``` rhtml
<%= mathjax_tag :component => 'tex-svg-full.js' %>
```
Additional configuration can be added directly before mathjax_tag, for example:

``` rhtml
<script>
MathJax = {
  tex: {
    inlineMath: [ ['$','$'] ],
    processEscapes: true
  }
};
</script>
<%= mathjax_tag %>
```

For more options please consult the MathJax documentation.

## What did it do to my rails project?

Three simple things: it adds 1 controller `MathjaxRailsController`; 1 helper method `mathjax_tag`; 1 router method `mathjax`.

It won't pollute your rails project more than the above three.

## Note

If you have a fast CDN service at hand, you don't need this gem.

Putting your MathJax at CDN is probably the best choice.

By `dmarczal`,

To work in rails 3.1 on production environment wih ngnix I just comment the follow line in production.rb

```
#config/environments/production.rb
#config.action_dispatch.x_sendfile_header = "X-Sendfile"
```



## ChangeLog

* 2013.11.21
Added support for Rails 4 apps.

* 2011.7.28
Version 0.0.2 used to fail on Heroku. Now the problem is fixed. I used to use `send_file` without content_type, which causes a failure when deployed to Heroku. Now in version 0.0.3 I use `render :type=>...,` with the appropriate content-type set and the problem is solved.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
