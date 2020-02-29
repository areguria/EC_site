class Customers::CartItemsController < ApplicationController

  def show
  	@cart_items = current_customer.cart_items
  end

  def create
  	cart_item = Cart_item.new(params[:id])
  	cart_item.save
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
