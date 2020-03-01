class Customers::OrdersController < ApplicationController

	def confirm
	end

	def tahnks
	end
	def new
		@deliveries = current_customer.deliveries
		@delivery = Delivery.new

	end

	def create

		redirect_to customers_orders_thanks_path
	end

	def index
	end

	def show
	end

end
