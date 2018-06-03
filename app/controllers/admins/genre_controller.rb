class Admins::GenreController < ApplicationController

	def create
		genre = Genre.new(genre_param)
		genre.save
		redirect_to admins_genre_index
	end

	def index
		@genre = Genre.new
		@genres = Genre.all
	end

	def show
		@genre = Genre.find(params[:id])
		@items = @genre.items
	end

	def update
		genre = Genre.find(params[:id])
		genre.update(genre_params)
		redirect_to admins_genre_index
	end

	private
	def genre_params
		params.require(:genre).permit(:name)
	end

end
