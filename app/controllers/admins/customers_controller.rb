class Admins::CustomersController < ApplicationController
	def index
		@customer = Customer.all
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def edit
		@customer = Customer.find(params[:id])
	end
	def update
		customer = Customer.find(params[:id])
		 customer.update(customer_params)
		  redirect_to admins_customers_path
	end

	private

	def customer_params
		params.require(:customer).permit(:name_last,:name_first,:name_last_kana,
			:name_first_kana,:address,:email,:zip_code,:phone_number,:status)
	end
end
