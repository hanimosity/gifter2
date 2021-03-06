class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) << :photo

    devise_parameter_sanitizer.for(:account_update) << :photo
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

end
