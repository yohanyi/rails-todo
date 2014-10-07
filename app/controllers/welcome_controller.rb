class WelcomeController < ApplicationController
	def index
		@user = User.new
		@task = Task.new
		@tasks = Task.all
	end
end