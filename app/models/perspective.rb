class Perspective < ActiveRecord::Base
	has_many :stories
	has_many :comments
	validates :name, presence: true, uniqueness: true

end