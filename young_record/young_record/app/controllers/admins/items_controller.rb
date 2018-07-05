class Admins::ItemsController < ApplicationController
	def index
		
	end
	def new
		@item = Item.new
		@item.cds.build.songs.build
	end
	def edit
		
	end
	def create
		item = Item.new(item_params)
		item.save
		redirect_to root_path
	end

	private
	def item_params
		params.require(:item).permit(:price, :count, :cd_number, :name, :artist_name, :label_name, :text_id, :frag,{
			cds_attributes: [:id, :name,{
				songs_attributes: [:id, :name]
			}]})
		
	end
end
