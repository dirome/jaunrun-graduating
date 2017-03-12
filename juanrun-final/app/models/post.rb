class Post < ApplicationRecord
	belongs_to :juan
	has_many :taggings, dependent: :destroy
	has_many :tags, through: :taggings
	has_many :runners
	has_many :comments

	validates :title, presence: true, length: {minimum: 5}
	validates :body, presence: true

	def all_tags=(names)
		self.tags = names.split(", ").map do |name|
			Tag.where(name: name).first_or_create!
		end
	end

	def all_tags
		tags.map(&:name).join(", ")
	end
	
end
