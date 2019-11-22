module Mathjax
  module Rails
    module ViewHelpers
      def mathjax_tag(opt={})
        opt[:component] ||= 'tex-chtml-full.js'
        opt[:config] = nil if opt[:config] == false
      	"<script src=\"#{mathjax_path(:uri => opt[:component], config: opt[:config])}\" type=\"text/javascript\"></script>".html_safe
      end
    end
  end
end
ActionView::Base.send :include, Mathjax::Rails::ViewHelpers
