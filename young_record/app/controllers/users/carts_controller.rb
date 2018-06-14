class Users::CartsController < ApplicationController
	def index
		
	end
	def buy
		
	end
	def thanks
		
	end
	def create
		cart = Cart.new
		item = Item.find(params[:item_id])
		cart.user_id = current_user.id
		cart.item_id = item.id
		cart.count = params[:count][:count]
		cart.save
		redirect_to root_path
	end
end
