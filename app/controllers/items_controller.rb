class ItemsController < ApplicationController
	def top
		@new_items = Item.all.last(5)
	end
	def index
		@items = Array.new(Item.search(params[:search]))

		genre_id = params[:genre].to_i
		if genre_id != 0
			@items.each do |f|
				if !f.items_genres.exists?(genre_id: genre_id)
					@items.delete(f)
				end
			end
		end
	end
	def show
		@item = Item.find(params[:id])
		@cart = Cart.new
	end
end
