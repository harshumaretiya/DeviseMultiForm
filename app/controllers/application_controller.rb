class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  def set_true
    @first = true
  end
  protected

      def configure_permitted_parameters
        attributes = [:first_name, :last_name, :email, :age, :website, :city, :state, :country, :skills, :passion, :description, :mob_no]
          devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
          devise_parameter_sanitizer.permit(:account_update, keys: attributes)
      end
end
