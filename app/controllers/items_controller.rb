class ItemsController < ApplicationController
	def top
		
	end
	def index
		@items = Item.search(params[:search])
	end
	def show
		@item = Item.find(params[:id])
	end
end
