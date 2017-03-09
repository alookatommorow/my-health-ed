class CommentsController < ApplicationController
	def index
		@comments = Comment.where(story_id: params[:story_id])
	end
end