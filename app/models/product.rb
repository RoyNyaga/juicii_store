class Product < ApplicationRecord
	before_destroy :not_referenced_by_any_line_item
	belongs_to :category
	has_many :line_items, dependent: :destroy

	private

	def not_referenced_by_any_line_item
		unless line_items.empty?
			errors.add(:base, "line items present")
			throw :abort
		end
	end
end
