class ApplicationController < ActionController::Base
  before_action :initialize_session
  helper_method :cart

  def initialize_session
    session[:shopping_cart] ||= []
  end

  def cart
    Product.find(session[:shopping_cart])
  end

  before_action :set_breadcrumbs
  def add_breadcrumb(label, path = nil)
    @breadcrumbs << {
      label:,
      path:
    }
  end

  def set_breadcrumbs
    @breadcrumbs = []
  end

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :province_id) }

    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:email, :password, :current_password, :current_address, :province_id)
    end
  end
end
