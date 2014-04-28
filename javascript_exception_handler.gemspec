$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "javascript_exception_handler/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "javascript_exception_handler"
  s.version     = JavascriptExceptionHandler::VERSION
  s.authors     = ["Sahil Batla"]
  s.email       = ["sahilbathla1@gmail.com"]
  s.homepage    = "https://github.com/sahilbathla/jsexceptionhandler/"
  s.summary     = "Adds javascript exception to exception notifier"
  s.description = "Get notfied via exception handler or bug snap when any js exception occurs in your rails application"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
