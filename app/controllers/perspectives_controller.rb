class PerspectivesController < ApplicationController
	def show
		@perspective = Perspective.find(params[:id])
		p @perspective
	end
end