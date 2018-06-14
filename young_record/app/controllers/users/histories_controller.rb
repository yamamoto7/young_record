class Users::HistoriesController < ApplicationController
	def index
		@histories = current_user.histories
	end
	def show
		@history = History.find(params[:id])
	end
end
