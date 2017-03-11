class CommentsController < ApplicationController
	def index
		@story = Story.find(params[:story_id])
		@comments = Comment.where(story_id: params[:story_id])
		@comment = Comment.new
	end

	def create
		@comment = Comment.create!(comment_params)
		render partial: "/comments/comment", locals: { comment: @comment }
	end

	private

	  def comment_params
	  	{ body: params[:comment][:body],
	  		story_id: params[:story_id]
	  	}
	  end
end