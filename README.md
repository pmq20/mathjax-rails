# mathjax-rails

Displaying math on web pages is no longer a pain, thanks to the great work of [MathJax](https://github.com/mathjax/MathJax). To quote the description from its [official website](http://www.mathjax.org/),

  > MathJax is an open source JavaScript display engine for mathematics that works in all modern browsers.
  > 
  > No more setup for readers. No more browser plugins. No more font installations… It just works.

However, integrating it into a rails project makes your project folder swollen, because of the excessive amount of files contained in this package. 

So where to put? Put into `public` does not seem good, since beginning with rails 3.1 `public` is by default ignored in production environment. Granted that it is put in `public`, when using git, it leaves you no choice but to put mathjax inside .gitignore, which makes sharing across developers less painless, and you then get no control over what version of mathjax that other developers use.

Also, including mathjax inside your developing directory makes your TextMate less responsive when regaining focus, because TextMate will scan the whole directory structure for change.

That's the time when mathjax-rails comes into play!

  * It put mathjax into a system-wide directory, which makes your own project never swollen.
  * By simply including mathjax-rails in your Gemfile, all your rails app can benefit from MathJax immediately.
  * You now are in control of the MathJax version by controlling the viersion of mathjax-rails, which is simplely done via Gemfile.
  
Since MathJax 1.1, some configuration is needed to include it in your html page. mathjax-rails also simplifies that in the rails way.

  * it comes with a include helper to let you quickly configure MathJax up.
  * And a generator that let you feel the power of MathJax right away.

## Which MathJax version does it use?

The version of mathjax-rails reflects the version of MathJax that it contains. They are the same!

## Will it pollute my rails project?

No. mathjax-rails do very few things.

## Usage

comming soon...