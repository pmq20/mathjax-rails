module Mathjax
  module Rails
    module ViewHelpers
      def mathjax_tag(opt)
        if false==opt[:config]
          additional = ''
        else
          opt[:config] = 'TeX-AMS_HTML-full.js' if !opt[:config]
          additional = "?config=#{opt[:config]}"
        end
      	"<script src=\"#{mathjax_path(:uri=>'MathJax.js')}#{additional}\" type=\"text/javascript\"></script>".html_safe
      end
    end
  end
end
ActionView::Base.send :include, Mathjax::Rails::ViewHelpers