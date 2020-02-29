class Customers::DeliveriesController < ApplicationController
	before_action :authenticate_customer!

	def index
		@delivery = Delivery.new
		@deliveries = current_customer.deliveries
	end

	def create
		delivery = Delivery.new(delivery_params)
		delivery.customer = current_customer
		delivery.save
		redirect_to customers_deliveries_path
	end

	def edit
		@delivery = Delivery.find(params[:id])
	end

	def update
		delivery = Delivery.find(params[:id])
		delivery.update(delivery_params)
		redirect_to customers_deliveries_path
	end

	def destroy
		delivery = Delivery.find(params[:id])
		delivery.destroy
		redirect_to customers_deliveries_path
	end

	private
	def delivery_params
		params.require(:delivery).permit(:name, :zip_code, :address, :customer_id)
	end
end
