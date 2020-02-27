class Product < ApplicationRecord
	has_many :order_records, dependent: :destroy
	has_many :cart_items, dependent: :destroy
	belongs_to :category
	attachment :product_image
	enum status: {売切:0, 販売中:1}
	acts_as_paranoid
end
