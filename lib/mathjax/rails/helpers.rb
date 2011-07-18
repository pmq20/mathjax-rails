module Mathjax
  module Rails
    module ViewHelpers
      def mathjax_tag(configfile='TeX-AMS_HTML-full')
      	"<script src=\"#{mathjax_path(:uri=>'MathJax.js')}?config=#{configfile}.js\" type=\"text/javascript\"></script>".html_safe
      end
    end
  end
end
ActionView::Base.send :include, Mathjax::Rails::ViewHelpers