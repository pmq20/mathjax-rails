# MathJax-Rails

We are living in an age, where displaying math on web pages is never hard, thanks to the great work of [MathJax](https://github.com/mathjax/MathJax). 

To quote the description from its official website,

  > [MathJax](https://github.com/mathjax/MathJax) is an open source JavaScript display engine for mathematics that works in all modern browsers.
  > 
  > No more setup for readers. No more browser plugins. No more font installations… It just works.

## Why bother another gem?

Integrating MathJax into a rails project however could be a pain. MathJax is HUGE. It makes your project folder swollen very much, because of the excessive amount of files contained in this package. Including mathjax inside your developing directory makes your TextMate less responsive, because when TextMate loses focus and then regains focus, it will scan the whole directory structure for change.

Another problem is, where to put? Put into `public` does not seem the best practice, since beginning with rails 3.1 `public` is by default ignored in production environment. Plus it is big, when using git, it leaves you no choice but to throw mathjax inside .gitignore, which makes sharing across developers less painless, and you then get no control over what version of mathjax that other developers use.

## So?

That's the time when mathjax-rails comes into play!

  * It maintains MathJax at a system-wide directory.
  * By simply including mathjax-rails in your Gemfile, all your rails app can benefit from MathJax immediately.
  * It can maintain several versions of MathJax. You can specify the version you want to use via Rails config file.

## Usage

add this line to your Gemfile

  > gem 'mathjax-rails'
  
then

  $ bundle install

after which

  $ rails generate mathjax:fetch

add the following to config/routes.rb (you can change the name of course)

``` ruby
  mathjax 'mathjax'
```
add the script tag inside app/views/layouts/application.html.erb

``` erb
  > <%= mathjax_tag %>
```  
and it's done!

## Configuration

By default mathjax-rails will use the latest version of MathJax. You can specify another inside config/application.rb:

  > config.mathjax_version = '1.1a'

By default the `TeX-AMS_HTML-full.js` is loaded as the configuration file.

If you do not want any configuration file to be loaded:

  > <%= mathjax_tag :config=>false %>

If you want to load another configuration file, say `Accessible-full.js`:

  > <%= mathjax_tag :config=>'Accessible-full.js' %>
  
Additional configuration can be added directly before mathjax_tag, for example:

  > <script type="text/x-mathjax-config">
  > MathJax.Hub.Config({
  >   tex2jax: {
  >     inlineMath: [ ['$','$'] ],
  >     processEscapes: true
  >   }
  > });
  > </script>
  > <%= mathjax_tag %>

For more options please consult the MathJax documentation.

## What did it do to my rails project

Three simple things: it adds 1 controller `MathjaxRailsController`; 1 helper method `mathjax_tag`; 1 router method `mathjax`.

It won't pollute your rails project more than the above three.

## Note

If you have a fast CDN service at hand, you don't need this gem.

Putting your MathJax at CDN is probably the best choice.