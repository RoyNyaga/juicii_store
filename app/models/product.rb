class Product < ApplicationRecord
	belongs_to :category
	has_many :line_items, dependent: :destroy
	has_many :reviews, dependent: :destroy

	def self.search(search)
		all.where("lower(title) LIKE :search", search: "%#{search}%")
	end 

end
