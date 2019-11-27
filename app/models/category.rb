class Category < ApplicationRecord
	has_many :products, dependent: :destroy

	def self.search(search)
		all.where("lower(category_name) LIKE :search", search: "%#{search}%")
	end 
end
