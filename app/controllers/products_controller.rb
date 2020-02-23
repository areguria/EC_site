class ProductsController < ApplicationController

	def top
	end

	def index
		@product = Product.all
	end
end
