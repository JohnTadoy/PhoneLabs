class CategoriesController < ApplicationController
  def index
    @category = Category.all
    add_breadcrumb('Phone Brands')
  end

  def show
    @show = Product.where("category_id = ? ", params[:id])
    add_breadcrumb(@show.name, category_path)
    add_breadcrumb(@show.name)
  end
end
