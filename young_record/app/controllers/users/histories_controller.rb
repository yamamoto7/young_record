class Users::HistoriesController < ApplicationController
	def index
		@histories = current_user.histories
	end
	def show
		@history = History.find(params[:id])
	end

	def create
		# 履歴(history)の作成
		history = current_user.histories.new
		history.sum = 0
		history.user_address = current_user.address
		history.user_post = current_user.post
		history.save

		# 履歴の中身()history_items作成
		current_user.carts.each do |cart|
			# ひとつずつ作って保存を繰り返す
			h = history.history_items.new
			# カートの情報を移す
			h.item_id = cart.item_id
			h.cart_count = cart.count
			h.cart_price = cart.item.price
			h.save
			# sumに個数x値段を足す
			history.sum += (cart.item.price * cart.count)
			# 移し済みのカートを削除
			cart.destroy
		end
		# sumを変更したので更新
		history.update(history_params)

		redirect_to users_carts_thanks_path
	end

	private
	# sum更新用
	def history_params
		params.permit(:sum)
		
	end
end
