class Admins::HistoriesController < ApplicationController
	def index
		@histories = History.all
		if params[:status].present?
			@histories = @histories.get_by_status params[:status]
		end
	end
	def show
		@history = History.find(oarams[:id])
	end
end
