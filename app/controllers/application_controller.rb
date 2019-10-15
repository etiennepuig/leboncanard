class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_devise_parameters, if: :devise_controller?

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up){ |m| m.permit(:username,:email, :password, :password_confirmation, :phone)}
  end
end
