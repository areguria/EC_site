class Admins::CustomersController < ApplicationController
	def index
	end
	def edit
		
		@customer = Customer.find(params[:id])
	end
	def update
		@customer = Customer.find(params[:id])
		if @customer.update(customer_params)
		  redirect_to current_user
		  flash[:notice]='User Info was successfully updated'
		else
			render :edit
		end
	end

	private

	def customer_params
		params.require(:customer).permit(:name_last,:name_first,:name_last_kana,
			:name_first_kana,:address,:zip_code,:phone_number,:status)
	end
end
