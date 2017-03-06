class Tag < ApplicationRecord
	has_many :taggings, dependent: :destroy
	has_many :favours, through: :taggings
end
