class Admins::OrdersController < ApplicationController

	def top
		@ordercounts = Order.all.count
	end

	def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
	end

	def update
		order = Order.find(params[:id])
    order.update(order_params)
    redirect_to admins_order_path(order)
	end

	def update2
		order_record = OrderRecord.find(params[:id])
		order_record.update(order_record_params)
		redirect_to admins_order_path(order_record.order)
	end

	private

	def order_params
		params.require(:order).permit(:status)
	end

	def order_record_params
		params.require(:order_record).permit(:status)
	end

end
