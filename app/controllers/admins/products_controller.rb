class Admins::ProductsController < ApplicationController
 # before_action :if_not_admin
	before_action :if_not_admin

   def index
	@product = Product.all
   end
   def new
 	@product = Product.new
   end
   def create
 	  product = Product.new(product_params)
 	  if product.save
 	    flash[:notice]='Product was successfully created'
 	    redirect_to admins_product_path(product)
      else
    	flash[:notice] = "can't be blank"
    	render :new
      end
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

	# def if_not_admin
		# redirect_to root_path unless current_user.admin?
	# end
    private
	def product_params
     params.require(:product).permit(:name,:introduction,:product_image,:status,:price)
    end

end

