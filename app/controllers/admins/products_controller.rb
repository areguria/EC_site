class Admins::ProductsController < ApplicationController
 # before_action :if_not_admin

 def index
 end
 def new
 	@product = Product.new
 end




private

	# def if_not_admin
		# redirect_to root_path unless current_user.admin?
	# end
	def product_params
     params.require(:product).permit(:product_image)
    end


end
