class Admins::GenreController < ApplicationController
	def index
		@genre = Genre.new
		@genres = Genre.all
	end
	def show
		@genre = Genre.find(params[:id])
		@items = @genre.items
	end
end
