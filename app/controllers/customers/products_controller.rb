class Customers::ProductsController < ApplicationController

	def top
	end
	def show
		@categories = Category.all
		@product = Product.find(params[:id])
		@cart_item = CartItem.new
	end
	PER = 8
	def index
		category_id = Category.find(params[:category_id])
		if params[:category_id]
			@products = @category.product.all.per(PER)
			@allcount = @category.product.count
			@categories = Category.all
		else
			@products = Product.page(params[:page]).per(PER)
			@categories = Category.all
			@allcount = Product.all.count
		end
	end

	private

	def product_params
		 params.require(:product).permit(:name,:introduction,:category_id,:product_image,:status,:price)
 	end

end
