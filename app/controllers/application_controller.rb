class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:avater, :avatar_cache, :remov_avatar]) 
  end

end
