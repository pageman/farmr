class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  skip_before_filter :verify_authenticity_token

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :address, :contact)}
    end
end
