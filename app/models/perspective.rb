class Perspective < ActiveRecord::Base
	has_many :stories, dependent: :destroy
	has_many :comments, dependent: :destroy
	validates :name, presence: true, uniqueness: true

end