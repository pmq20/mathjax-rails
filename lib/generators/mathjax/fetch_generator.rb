require 'rails'

module Mathjax
  module Generators
    class FetchGenerator < ::Rails::Generators::Base

      desc "This generator downloads MathJax and routes it to your project"
      source_root File.expand_path('../../../../../vendor', __FILE__)

      def copy_jquery
        say_status("copying", "Downloading MathJax", :green)
        # p `unzip -q todo.zip -d todo`
      end

    end
  end
end
