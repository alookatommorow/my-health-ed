class HomeController < ApplicationController
	def index
		@perspectives = Perspective.all
	end
end