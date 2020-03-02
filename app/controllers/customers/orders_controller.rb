class Customers::OrdersController < ApplicationController

	def confirm
		binding.pry
		@cart_items = CartItem.all
	end
  def save
  	session[:order] = order_params
  	redirect_to customers_orders_confirm_path(current_customer)
  end
	def tahnks
	end
	def new
		@delivery = current_customer.deliveries
	end

	def index
	end

	def show
	end


	private
	def order_params
		params.permit(:name,:address,:zip_code,:pay_status, :address_status)
	end

end
