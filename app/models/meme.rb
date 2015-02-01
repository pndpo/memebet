class Meme < ActiveRecord::Base

	validates_presence_of :title
	validates_uniqueness_of :url

	belongs_to :author, :class_name => "User"
	has_many :bets, as: :bettable, dependent: :destroy

end
