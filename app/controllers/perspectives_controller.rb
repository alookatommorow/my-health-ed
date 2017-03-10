class PerspectivesController < ApplicationController
	def show
		@perspective = Perspective.includes({ stories: [:story_texts, :comments] } ).find(params[:id])
	end

	def index
		@perspectives = Perspective.all
	end
end