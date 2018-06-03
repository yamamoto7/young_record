class ItemsController < ApplicationController

	def index
		@items = Item.all
		@tasks = Item.search(params[:search])
		@items = if params[:search]
		  Item.where('name LIKE ?', "%#{params[:search]}%")
		else
		  Item.all
		end
	end

	def new
		@item = Item.new
	end

	def create
		item = Item.new(item_params)
		item.save
		# item.user_id = current_user.id
		redirect_to items_path
	end

	def show
		@item = Item.find(params[:id])
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
    	@item.update(item_params)
    	redirect_to item_path(@item.id)
	end

	def destroy

	end

private
	def item_params
		 params.require(:item).permit(:name,
		 							  :image,
									  :price,
									  :count,
									  :artist_name,
									  :album_name,
									  :label_name,
									  :genre,
									  :show_flag)
	end

	def search_params
		params.require(:item).permit(:name,
									 :price,
									 :artist_name,
									 :album_name,
									 :label_name,
									 :genre
									 )
	end
end
