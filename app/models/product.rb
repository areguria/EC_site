class Product < ApplicationRecord
	has_many :order_records, dependent: :destroy
	has_many :cart_items, dependent: :destroy
	belongs_to :category
	attachment :product_image
	acts_as_paranoid
end
