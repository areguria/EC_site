class Customers::CartItemsController < ApplicationController

  def index
  	@cart_item = current_customer.cart_items
  end

  def create
    cart_item = CartItem.new(cart_item_params)
    cart_item.customer_id = current_customer
    cart_item.save
    redirect_to customers_cart_items_path(current_customer)
  end

  def destroy
  	cart_item = CartItem.find(params[:id])
  	cart_item.destroy
  	redirect_to customers_cart_items_path(current_customer)
  end
  def destroy_all
    CartItem.destroy_all
    redirect_to customers_cart_items_path(current_customer)
  end

  def update
    cart_item = CartItem.find(params[:id])
    cart_item.update(cart_item_params)
    redirect_to customers_cart_items_path(current_customer)

  end

  private
  
  def cart_item_params
  	params.require(:cart_item).permit(:product_id,:count)
  end

end
