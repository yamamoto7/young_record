class Admins::HistoriesController < ApplicationController
	def index
		@histories = History.all
	end
	def show
		@history = History.find(oarams[:id])
	end
end
