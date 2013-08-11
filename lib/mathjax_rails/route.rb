module MathjaxRails
  module Routes
    def mathjax(str)
      match "#{str}/*uri" => "mathjax_rails#index",:as=>'mathjax', via: [:get, :post]
    end
  end
end
ActionDispatch::Routing::Mapper.send :include,MathjaxRails::Routes