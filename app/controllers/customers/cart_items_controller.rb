class Customers::CartItemsController < ApplicationController

  def index
  	@cart_items = current_cart.cart_items
  end
  def create
  end

  def add_item
  	if @cart_item.blank?
  		@cart_item = current_cart.cart_items.build(product_id: params[:product_id])
  	end

  	@cart_item.quantity += params[:quantity].to_i
  	@cart_item.save
  	redirect_to current_cart
  end

  def update_item
  	@cart_item.update(quantity: params[:quantity].to_i)
  	redirect_to current_cart
  end

  def delete_item
  	@cart_item.destory
  	redirect_to current_cart
  end

  private
  def setup_cart_item!
  	@cart_item = current_cart.cart_items.find_by(product_id: params[:product_id])
  end
end
