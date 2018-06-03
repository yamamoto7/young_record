class Admins::GenreController < ApplicationController

	def create
		genre = Genre.new(genre_param)
		genre.save
		# redirect_to genre一覧
	end

	def index
		@genre = Genre.new
		@genres = Genre.all
	end
	def show
		@genre = Genre.find(params[:id])
		@items = @genre.items
	end
end
