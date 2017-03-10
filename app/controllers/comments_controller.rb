class CommentsController < ApplicationController
	def index
		@story = Story.find(params[:story_id])
		@comments = Comment.where(story_id: params[:story_id])
		@comment = Comment.new

	end

	def create
		Comment.create(comment_params)
	end

	private

	  def comment_params
	    params.require(:comment).permit(:body, :story_id)
	  end
end