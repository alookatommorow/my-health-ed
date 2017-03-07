class Story < ActiveModel::Base
	belongs_to :perspective
	belongs_to :user
	has_many :story_texts
	has_many :comments

end