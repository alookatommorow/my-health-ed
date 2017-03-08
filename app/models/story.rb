class Story < ActiveRecord::Base
	belongs_to :perspective
	has_many :story_texts
	has_many :comments

end