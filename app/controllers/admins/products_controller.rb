class Admins::ProductsController < ApplicationController
	before_action :if_not_admin
	before_action :set_products, only: [:show, :edit, :destroy]



	private
	def if_not_admin
		redirect_to root_path unless current_user.admin?
	end

	def set_products
		@product = Product.find(params[:id])
	end
end
