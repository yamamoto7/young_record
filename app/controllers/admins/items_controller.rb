class Admins::ItemsController < ApplicationController
	before_action :authenticate_admin!

	def index
		
	end
	def new
		@item = Item.new
		@item.cds.build
		@item.items_genres.build
	end
	def edit
		@item = Item.find(params[:id])
	end
	def edit_cds
		@item = Item.find(params[:id])
	end
	def update
		item = Item.find(params[:id])
    	item.update(item_params)
    	redirect_to root_path
	end
	def create
		item = Item.new(item_params)
		item.save
		redirect_to root_path
	end

	private
	def item_params
		params.require(:item).permit(:price, :count, :cd_number, :name, :artist_name, :label_name, :text_id, :frag, :image, {
			cds_attributes: [:id, :name, :song_number, :_destroy, {
				songs_attributes: [:id, :name, :time, :_destroy]
			}],
			items_genres_attributes: [:id, :genre_id, :item_id, :_destroy]
			})
		
	end
end
