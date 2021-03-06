class Users::CartsController < ApplicationController
	before_action :authenticate_user!

	def index
		@carts = Cart.all
		@carts = current_user.carts
	end

	def buy
		
	end
	def thanks
		
	end
	def create
		item = Item.find(params[:item_id])
		if current_user.carts.exists?(item_id: item.id) then
			cart = current_user.carts.find_by(item_id: item.id)
			item.count -= params[:count][:count].to_i
			cart.count += params[:count][:count].to_i
			item.update(item_params)
			cart.update(cart_params)
		else
			cart = Cart.new
			cart.user_id = current_user.id
			cart.item_id = item.id
			item.count -= params[:count][:count].to_i
			cart.count = params[:count][:count].to_i
			item.update(item_params)
			cart.save
		end
		redirect_to users_carts_path
	end

	def destroy
		@cart = Cart.find(params[:id])
		@cart.destroy
		redirect_to users_carts_path
	end


	private
	def item_params
		params.permit(:count)
	end
	def cart_params
		params.permit(:count)
	end
end
