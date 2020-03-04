class Delivery < ApplicationRecord
	belongs_to :customer
	validates :address,:zip_code,:name ,presence: true
	def view
		self.name + '(' + self.zip_code + self.address + ')'
	end
end
