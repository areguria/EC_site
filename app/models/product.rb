class Product < ApplicationRecord
	attachment :product_image
	enum status: {売切:0, 販売中:1}
	acts_as_paranoid
end
