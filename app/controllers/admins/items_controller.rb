class Admins::ItemsController < ApplicationController
	def index
		
	end
	def new
		@item = Item.new
		@item.cds.build
	end
	def edit
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
			}]})
		
	end
end
