class CommentsController < ApplicationController
	def index
		@comments = Comment.where(story_id: params[:story_id])
	end

	def create
		Comment.create(comment_params)
	end

	private

	  def comment_params
	    params.require(:comment).permit(:body, :story_id)
	  end
end