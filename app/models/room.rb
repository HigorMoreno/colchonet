class Room < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	has_many :reviewed_rooms, through: :reviews, source: :room
	belongs_to :user

	validates_presence_of :title, :location, :description
	validates_length_of :description, minimum: 10, allow_blank: false
	validates_uniqueness_of :title

	def complete_name
		"#{title}, #{location}"
	end

	scope :most_recent, -> { order('created_at DESC') }
end
