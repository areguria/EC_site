class Admins::ProductsController < ApplicationController
 # before_action :if_not_admin

 def index
    @products = Product.all
 end
 def new
 	@product = Product.new
 end
 def create
 	product = Product.new(product_params)
 	if product.save
 	    flash[:notice]='Product was successfully created'
    else
    	flash[:notice] = "can't be blank"
    	render :new
    end
 end






private

	# def if_not_admin
		# redirect_to root_path unless current_user.admin?
	# end
	def product_params
     params.require(:product).permit(:name,:introduction,:product_image,:status,:price)
    end


end
