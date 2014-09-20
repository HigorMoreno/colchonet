class Room < ActiveRecord::Base
	validates_presence_of :title, :location, :description
	validates_length_of :description, minimum: 10, allow_blank: false
	validates_uniqueness_of :title

	def complete_name
		"#{title}, #{location}"
	end
end
