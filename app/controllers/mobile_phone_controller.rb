class MobilePhoneController < ApplicationController
  def index
    @phone =Product.page(params[:page])
  end

  def show
    @show = Product.find(params[:id])
  end
end
