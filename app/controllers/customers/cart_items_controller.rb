class Customers::CartItemsController < ApplicationController

  def index
  end
  def create
  	@product.save
  end

end
