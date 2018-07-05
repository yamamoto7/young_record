class Admins::HistoriesController < ApplicationController
	before_action :authenticate_admin!

	def index
		@histories = History.all
		if params[:status].present?
			@histories = @histories.get_by_status params[:status]
		end
	end

	def show
		@history = History.find(oarams[:id])
	end

	def update
		@history = History.find(oarams[:id])
		@history.update(history_params)
		redirect_to admins_history_path(@history.id)
	end

	private
	def history_params
		params.require(:history).permit(:status)
	end
end
