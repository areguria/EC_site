class Admins::OrdersController < ApplicationController

	def top
		@order = Order.all
	end
	def index
		@orders = Order.all
	end
	def show
		@order = Order.find(params[:id])
	end
	def update
		binding.pry
		order = Order.find(params[:id])
    order.update(order_params)
    redirect_to admins_order_path(order)
	end

	private

	def order_params
		params.require(:order).permit(:status)
	end
	def order_record_params
		params.require(:order_record).permit(:status)
	end
end
