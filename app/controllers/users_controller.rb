class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			puts "********** SAVED **********"
			redirect_to root_path
		else
			puts "********** NOT SAVED **********"
			redirect_to root_path
		end
	end

	private


	def user_params
		params.require(:user).permit(
			:name,
			:email,
			:password
		)
	end
end