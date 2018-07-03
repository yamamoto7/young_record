class Users::CartsController < ApplicationController
	before_action :authenticate_user!

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
		item.count -= params[:count][:count]
		cart.count = params[:count][:count]
		cart.save
		redirect_to root_path
	end
end
