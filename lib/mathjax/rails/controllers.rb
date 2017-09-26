class Mathjax::Rails::MathjaxRailsController < ActionController::Base
  def giveOutStaticFile
    ext = ''
    ext = ".#{params[:format]}" if params[:format]
    filename = params[:uri]+ext

    clean_path = Pathname.new(filename).cleanpath.to_s
    return render :status => 404 if clean_path != filename

    filepath = "../../../../vendor/#{Mathjax::Rails::DIRNAME}/#{filename}"

    extname = File.extname(filename)[1..-1]
    mime_type = Mime::Type.lookup_by_extension(extname)
    options = Hash.new
    options[:type] = mime_type.to_s unless mime_type.nil?
    options[:disposition] = 'inline'
    file = File.expand_path(filepath, __FILE__)
    if File.exists?(file)
      send_file file, options
    else
      render :status => 404
    end
  end
end
