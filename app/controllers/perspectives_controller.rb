class PerspectivesController < ApplicationController
	def show
		@perspective = Perspective.find(params[:id])
	end
end