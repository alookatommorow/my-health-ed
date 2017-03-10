class Story < ActiveRecord::Base
	belongs_to :perspective
	has_many :story_texts, dependent: :destroy
	has_many :comments, dependent: :destroy

end