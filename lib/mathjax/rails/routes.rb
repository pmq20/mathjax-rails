module Mathjax
  module Rails
    module RouterMethods
      def mathjax(str)
        match "#{str}/*uri" => "mathjax/rails/mathjax_rails#giveOutStaticFile",:as=>'mathjax', :via => [:get, :post]
      end
    end
  end
end
ActionDispatch::Routing::Mapper.send :include,Mathjax::Rails::RouterMethods
