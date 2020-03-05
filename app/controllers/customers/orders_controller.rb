class Customers::OrdersController < ApplicationController

	def confirm
		@cart_items = current_customer.cart_items
	end

  def save
  	session[:order] = order_params
  if session[:order]["address_status"] == "0"
  		session[:order]["address"] = current_customer.address
  		session[:order]["zip_code"] = current_customer.zip_code
  		session[:order]["name"] = current_customer.name_first
  elsif session[:order]["address_status"] == "1"
  	delivery = Delivery.find(session[:order][:delivery_id])
   		session[:order]["address"] = delivery.address
  		session[:order]["zip_code"] = delivery.zip_code
  		session[:order]["name"] = delivery.name
  else session[:order]["address_status"] == "2"
  	end
  	redirect_to customers_orders_confirm_path
  end

	def thanks
		customers_cart_items_destroy_all_path
	end

	def new
		@delivery = current_customer.deliveries
		@customer = current_customer
	end

	def create
		order = Order.new(
			pay_status: session[:order]["pay_status"],
			status:     session[:order]["status"],
			address:     session[:order]["address"],
			zip_code:   session[:order]["zip_code"],
			name:       session[:order]["name"]
			)
		order.customer_id = current_customer.id
		order.save!

		cart_items = current_customer.cart_items
		cart_items.each do |item|
			order_record = OrderRecord.new(
			order_id:   order.id,
			product_id: item.product_id,
			count:     item.count,
			end_price: item.product.price
			)
			order_record.save!
	  end
	  current_customer.cart_items.destroy_all
			redirect_to customers_orders_thanks_path
		end

	def index
		@orders = current_customer.orders
	end

	def show
	  @order = Order.find(params[:id])
	end


	private
	def order_params
		params.permit(:name,:address,:zip_code,:pay_status,:address_status,:delivery_id)
	end
end