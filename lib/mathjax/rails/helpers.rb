module Mathjax
  module Rails
    module ViewHelpers
      def mathjax_tag(opt={})
        opt[:config] ||= 'TeX-AMS_HTML-full.js'
        opt[:config] = nil if opt[:config] == false
        "<script src=\"#{main_app.mathjax_path(:uri=>'MathJax.js', config: opt[:config])}\" type=\"text/javascript\"></script>".html_safe
      end
    end
  end
end
ActionView::Base.send :include, Mathjax::Rails::ViewHelpers
