class ApplicationController < ActionController::Base
  before_action :configure_permitted_parametters, if: :devise_controller?

  private
  def configure_permitted_parametters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
end
