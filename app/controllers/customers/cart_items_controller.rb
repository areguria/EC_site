class Customers::CartItemsController < ApplicationController

  def show
  	@cart_items = current_customer.cart_items
  end

  def create
    cart_item = CartItem.new(cart_item_params)
    # cart_items = Product.find_by(id: cart_item_params[:product_id])
    cart_item.customer_id = current_customer
  	cart_item.save
    redirect_to customers_cart_item_path(current_customer)

	end

  def destroy
  	@cart_item = current_cart_item
  	@cart_item.destroy
  	redirect_to customers_cart_items_path(current_customer)
  end

  private
  
  def cart_item_params
  	params.require(:cart_item).permit(:product_id,:count)
  end

end
