class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)
    if session[:visit_count].nil?
      session[:visit_count] = 1 
    else
      session[:visit_count] += 1 
    end
  end
end
