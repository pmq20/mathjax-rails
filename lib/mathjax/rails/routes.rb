module Mathjax
  module Rails
    module RouterMethods
      def mathjax(str)
        match "#{str}/*uri" => "MathjaxRails#giveOutStaticFile",:as=>'mathjax'
      end
    end
  end
end
ActionDispatch::Routing::Mapper.send :include,Mathjax::Rails::RouterMethods