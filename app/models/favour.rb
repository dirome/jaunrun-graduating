class Favour < ApplicationRecord
	belongs_to :juan
	has_many :taggings, dependent: :destroy
	has_many :tags, through: :taggings
	has_many :runner

	def self.tagged_with(name)
		Tag.find_by!(name: name).favours
	end

	#def all_tags(names)
     # names = 'music, spotify'
     #self.tags = names.split(',').map do |name|
     #	Tag.where(name: name).first_or_create!
     #end
	#end

	#def all_tags
#		tags.name.join(", ")
#	end
end
