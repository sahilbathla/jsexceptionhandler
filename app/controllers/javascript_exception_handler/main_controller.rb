require_dependency "javascript_exception_handler/application_controller"

module JavascriptExceptionHandler
  class MainController < ActionController::Metal
    def index
      self.response_body = params.to_s
      if 'ExceptionNotifier'.safe_constantize
        ExceptionNotifier::Notifier.background_exception_notification(Exception.new('Js Exception'), params).deliver
      elsif 'Bugsnag'.safe_constantize 
        Bugsnag.notify(Exception.new('Js Exception'), params)
      end
    end
  end
end