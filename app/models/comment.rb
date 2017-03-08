class Comment < ActiveRecord::Base
	belongs_to :story
	has_many :comments

end