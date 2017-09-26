module Mathjax
  module Rails
    module RouterMethods
      def mathjax(str, cache=1.day)
        match "#{str}/*uri" => "mathjax/rails/mathjax_rails#giveOutStaticFile",:as=>'mathjax', :via => [:get, :post], :cache => cache
      end
    end
  end
end
ActionDispatch::Routing::Mapper.send :include,Mathjax::Rails::RouterMethods
