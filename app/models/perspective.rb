class Perspective < ActiveRecord::Base
	has_many :stories
	validates :title, presence: true, uniqueness: true

end