class Customers::CartItemsController < ApplicationController

	def index
		@cart_item = Cart_items.all
	end

end
