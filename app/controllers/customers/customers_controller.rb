class Customers::CustomersController < ApplicationController
	def show
		@customer = Customer.find(params[:id])
	end
	def edit
		@customer = Customer.find(params[:id])
	end
	def update
		customer = Customer.find(params[:id])
		customer.update(customer_params)
		redirect_to customers_customer_path(current_customer)
	end
	def confirm
	end
	def destroy
		customer = Customer.find(params[:id])
		customer.destroy
		redirect_to("/")
	end

	private
	 def customer_params
		params.require(:customer).permit(:name_last,:name_first,:name_last_kana,
			:name_first_kana,:address,:zip_code,:phone_number,:status)
	 end
end
