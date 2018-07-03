class Admins::GenreController < ApplicationController
	before_action :authenticate_admin!

	def create
		genre = Genre.new(genre_params)
		genre.save
		redirect_to admins_genre_index_path
	end

	def index
		@genres = Genre.all
		if params[:id].present?
			@genre = Genre.find(params[:id])
		else
			@genre = Genre.new
		end
	end

	def show
		@genre = Genre.find(params[:id])
		@items = @genre.items
	end

	def update
		@genre = Genre.find(params[:id])
		respond_to do |format|
			if @genre.update(genre_params)
				format.html { redirect_to request.referer, notice: 'Genre was successfully updated.' }
				format.json { render :show, status: :ok, location: @genre }
			else
				format.html { render :edit }
				format.json { render json: @genre.errors, status: :unprocessable_entity }
			end
		end
	end

	private
	def genre_params
		params.require(:genre).permit(:name)
	end

end
