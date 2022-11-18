class MobilePhoneController < ApplicationController
  def index
    @phone =Product.all
  end
end
