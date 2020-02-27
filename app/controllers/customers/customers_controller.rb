class Customers::CustomersController < ApplicationController
	def show
		@customer = Customer.find(params[:id])
	end
	def edit
	  @customer = Customer.find(params[:id])
	end
	def update
	end
	def confirm
	end

	private
	 def customer_params
		params.require(:customer).permit(:name_last,:name_first,:name_last_kana,
			:name_first_kana,:address,:zip_code,:phone_number,:status)
	end
end
