class Delivery < ApplicationRecord
	belongs_to :customer
	validates :address,:zip_code,:name ,presence: true
end
