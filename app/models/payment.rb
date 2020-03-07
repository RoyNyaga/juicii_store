class Payment < ApplicationRecord
  belongs_to :user

  VALID_NUMBER = /\A2376\d{8}\z/i
  	validates :phone, :presence => {:message => 'hello world, bad operation!'},
  					length: { maximum: 13 },
                    format: { with: VALID_NUMBER }
end
