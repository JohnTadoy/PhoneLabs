class MobilePhoneController < ApplicationController
  def index
    @phone = Product.page(params[:page])
    add_breadcrumb('All Mobile Phones')
    session[:visit_count] ||= 0
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
  end

  def show
    @show = Product.find(params[:id])
    add_breadcrumb('All Mobile Phones', root_path)
    add_breadcrumb(@show.name)
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
