class TasksController < ApplicationController
	def index
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(:name => params[:task][:name])

		if @task.save
			redirect_to root_path
		else
			redirect_to :back
		end
	end

	def edit
	end

	def update
		@task = Task.find(params[:id])
		if @task.status == "todo"
			@task.update_attribute(:status, "progress")
		elsif @task.status == "progress"
			@task.update_attribute(:status, "done")
		end
		@task.save
		redirect_to root_path
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