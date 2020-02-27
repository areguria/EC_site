class Customers::DeliveriesController < ApplicationController
	def index
		@delivery = Delivery.new
	end

	def edit
	end

	def create
		delivery = Delivery.new(delivery.params)
		delivery.save
		redirect_to customers_deliveries_path
	end

	def update
	end

	def destroy
	end

	private
	def delivery.params
		params.require(:delivery).permit(:address,:zip_code,:name)
	end
end
