class Admins::UsersController < ApplicationController
	before_action :authenticate_admin!
	def index
		@users = User.all
	end
	def show
		@user = User.find(params[:id])
		@histories = @user.histories
	end
end
