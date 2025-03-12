class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, unless: :public_page?


  private

  def public_page?
    controller_name == "flats" && action_name.in?(["index", "show"])
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_num])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_num])
  end
end
