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
		@delivery = current_customer.deliveries
		@order = Order.new

	end
	def create
		if params[:status] == '1'
		order_record = OrderRecord.new
			order = current_customer.cart_item
			order = Order.new
			order_record.save
			order.save
		elsif params[:status] == '2'
		elsif params[:status] == '3'
			address = Address.new
			address.zip_code = params[:order][:zip_code]
		# if order.2ave
			# redirect_to customers_orders_thanks_path
		# else
			# redirect_to customers_orders_confirm_path(current_customer)
		# end
		end
	end

	def index
	end

	def show
	end

	private
	def order_params
		params.permit(:name,:address,:zip_code,:pay_status,:address_status)
	end
end
