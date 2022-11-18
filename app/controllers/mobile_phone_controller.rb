class MobilePhoneController < ApplicationController
  def index
    @phone =Product.page(params[:page])
  end

  def show
    @show = Product.find(params[:id])
  end

  def search
    find = "%#{params[:q]}%"
    mobile = "%#{params[:type]}%"

    if mobile == ""
      @mobile = Product.where("name LIKE ?", find)
    else
      @mobile = Product.where("name LIKE ? AND category_id LIKE ?", find, mobile)
    end
  end
end
