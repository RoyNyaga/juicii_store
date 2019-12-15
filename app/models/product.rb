class Product < ApplicationRecord
	before_destroy :not_referenced_by_any_line_item
	belongs_to :category
	has_many :line_items, dependent: :destroy
	has_many :reviews, dependent: :destroy

	def self.search(search)
		all.where("lower(title) LIKE :search", search: "%#{search}%")
	end 

	private

	def not_referenced_by_any_line_item
		unless line_items.empty?
			errors.add(:base, "line items present")
			throw :abort
		end
	end
end
