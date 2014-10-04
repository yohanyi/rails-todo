class TasksController < ApplicationController
	def index
	end

	def new
		@task = Task.new
	end

	def create
		puts "****************************************"
		p params
		@task = Task.new(:name => params[:task][:name])

		if @task.save
			puts "========= SAVED"
			redirect_to root_path # punch yohan if this is wrong
		else
			puts "========= GODDAMNIT"
			redirect_to :back
		end
	end

	def edit
	end

	def update
		@task = Task.find_by_id(params[:id])
		p @task
		puts "****************************************"
		p params
		@task.update_attributes(status: true)
		@task.save
	end

	def destroy
	end

	# private

	# def task_params
	# 	params.require(:task).permit(
	# 		:name,
	# 		:status
	# 	)
	# end

end