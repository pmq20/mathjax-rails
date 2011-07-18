require File.expand_path('../lib/mathjax/rails/version', __FILE__)
path = File.expand_path('../vendor',__FILE__)
print "Unzipping MathJax #{Mathjax::Rails::ZIPNAME}..."
print "\n"
print `unzip -q #{path}/#{Mathjax::Rails::ZIPNAME}.zip -d #{path}`
print "\n"