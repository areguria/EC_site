class Customers::CustomersController < ApplicationController
	def show
		@customer = Customer.find(params[:id])
	end
	def edit
	end
	def update
	end
	def confirm
	end

	private
	 def customer_params
	 	params.require(:customer).permit(:name_last,:name_last_kana,:name_first,:name_first_kana,:address,:zip_code,:phone_number,:status,:email)
	 end
end
