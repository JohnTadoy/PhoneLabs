class CartController < ApplicationController
  def create
    logger.debug("Adding #{params[:id]} to cart.")
    id = params[:id].to_i
    unless session[:shopping_cart].include?(id)
      session[:shopping_cart] << id
      product = Product.find(id)
      flash[:notice] = " ➕ #{product.name} added to cart."
    end
    redirect_to root_path
  end

  def destroy
  #remove params[:id] from cart
  end
end
