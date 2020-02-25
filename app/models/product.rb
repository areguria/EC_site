class Product < ApplicationRecord
	attachment :product_image
	enum status: {売切:false, 販売中:true}
end
