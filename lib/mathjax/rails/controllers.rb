class Mathjax::Rails::MathjaxRailsController < ActionController::Base
  def giveOutStaticFile
    ext = ''
    ext = ".#{params[:format]}" if params[:format]
    filename = params[:uri]+ext
    filepath = "../../../../vendor/#{Mathjax::Rails::DIRNAME}/#{filename}"

    extname = File.extname(filename)[1..-1]
    mime_type = Mime::Type.lookup_by_extension(extname)
    options = Hash.new
    options[:type] = mime_type.to_s unless mime_type.nil?
    options[:disposition] = 'inline'
    file = File.expand_path(filepath, __FILE__)
    if File.exists?(file)
<<<<<<< HEAD
      expires_in (params[:cache] || 1.day), :public => true unless params[:cache] == false
=======
      response.headers["Expires"] = (params[:cache] || 1.day).from_now.httpdate
>>>>>>> cdd6b55... Add cache configuration
      send_file file, options
    else
      render :status => 404
    end
  end
end
