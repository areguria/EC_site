class Admins::OrdersController < ApplicationController

	def top
		@order = Order.all
	end
	def index
		@order = Order.all
	end
	def show
	end
	def update
	end
end
