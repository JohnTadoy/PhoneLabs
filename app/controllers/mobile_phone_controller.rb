class MobilePhoneController < ApplicationController
  def index
    @phone =Product.all
  end

  def show
    @show = Product.find(params[:id])
  end
end
