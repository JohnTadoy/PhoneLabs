class MobilePhoneController < ApplicationController
  def index
    @phone = Product.page params[:page]
  end
end
