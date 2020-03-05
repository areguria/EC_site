class Admins::ProductsController < ApplicationController

 def index
    @products = Product.all
 end
 def new
 	@product = Product.new
   end

   def create
 	  product = Product.new(product_params)
 	  product.save
 	  binding.pry
 	  redirect_to admins_product_path(product)
   end


	def show
		@product = Product.find(params[:id])
	end
	def edit
		@product = Product.find(params[:id])
	end

	def update
		product = Product.find(params[:id])
		product.update(product_params)
		redirect_to admins_product_path(product)
	end


	# def if_not_admin
		# redirect_to root_path unless current_user.admin?
	# end

    private
	def product_params
     params.require(:product).permit(:name,:introduction,:category_id,:product_image,:status,:price)
 	end

	def admin_user
		redirect_to root_path unless current_user.admin?
	end

end
