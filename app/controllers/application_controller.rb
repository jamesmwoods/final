class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :name, :password) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
    end

  public
  def ownership_check!(entity)
    security_violation unless current_user.owns?(entity)
  end

  def security_violation
    redirect_to root_path, notice: "Unauthorized."
  end
end