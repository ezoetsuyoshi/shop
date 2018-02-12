class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?


  def after_sign_in_path_for(resource_or_scope)
     items_path
  end

  def after_sign_out_path_for(resource_or_scope)
     items_path
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:lastname,:firstname,:kana_lastname,:kana_firstname,:postal_code,:address2, :phone, :address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:lastname,:firstname,:kana_lastname,:kana_firstname,:postal_code,:address2, :phone, :address])
    devise_parameter_sanitizer.permit(:edit, keys: [:lastname,:firstname,:kana_lastname,:kana_firstname,:postal_code,:address2, :phone, :address])
  end
end
