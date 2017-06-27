class ApplicationController < ActionController::Base
  # This contoller is Devise Authentication

  #To prevent CSRF attacks by giving exeception
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Error handling
    begin
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    rescue Exception => errMsg # interrogate a rescured exception
      puts errMsg #display the system generated error message
    end# End error handing
  end
end
