class Customers::ProductsController < ApplicationController

	def top
	end
	def show
		@categories = Category.all
		@product = Product.find(params[:id])
	end
	PER = 8
	def index
		@products = Product.page(params[:page]).per(PER)
		@categories = Category.all
		@allcount = Product.all.count
	end

	private

	def product_params
		 params.require(:product).permit(:name,:introduction,:category_id,:product_image,:status,:price)
 	end

end
