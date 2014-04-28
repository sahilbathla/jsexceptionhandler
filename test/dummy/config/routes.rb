Rails.application.routes.draw do

  mount JavascriptExceptionHandler::Engine => "/javascript_exception_handler"
end
