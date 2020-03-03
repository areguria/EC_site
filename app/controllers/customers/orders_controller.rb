class Customers::OrdersController < ApplicationController

	def confirm
		@cart_items = current_customer.cart_items
	end

  def save
  	session[:order] = order_params
  	redirect_to customers_orders_confirm_path(current_customer)
  end

	def thanks
	end

	def new
		@deliveries = current_customer.deliveries
		@delivery = Delivery.new

	end

	def create
		redirect_to customers_orders_thanks_path
		@delivery = current_customer.deliveries
	end

	def create
		order = Order.new(order_params)
		if order.save
			order_records = current_customer.cart_items
			if order_records.save
			redirect_to customers_orders_thanks_path
		  end
	else
			redirect_to customers_orders_confirm_path(current_customer)
		end
	end

	def index
	end

	def show
	end

	private
	def order_params
		params.permit(:name,:address,:zip_code,:pay_status,:address_status,:end_price)
	end

	def order_records_params
		params.require(:order_records).permit(:product_id,:order_id,:counts,:status)
	end

end
