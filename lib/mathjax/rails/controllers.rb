class MathjaxRailsController < ActionController::Base
  def giveOutStaticFile
    ext = ''
    ext = ".#{params[:format]}" if params[:format]
    filename = params[:uri]+ext
    filepath = "../../../../vendor/#{Mathjax::Rails::DIRNAME}/#{filename}"
    
    extname = File.extname(filename)[1..-1]
    mime_type = Mime::Type.lookup_by_extension(extname)
    content_type = mime_type.to_s unless mime_type.nil?

    render :file => File.expand_path(filepath,__FILE__), :content_type => content_type
  end
end