class MathjaxRailsController < ActionController::Base
  def giveOutStaticFile
    ext = ''
    ext = ".#{params[:format]}" if params[:format]
    send_file(File.expand_path("/../../../vendor/#{Mathjax::Rails::ZIPNAME}/#{params[:uri]+ext}",__FILE__),:disposition=>'inline'))
  end
end