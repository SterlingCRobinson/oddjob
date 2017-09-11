class JobsController < ApplicationController

	def index
		@jobs = Job.all
		@user = current_user
	end

	def show
		@job = Job.find_by_id(params[:id])
		@user = @job.user
	end

	def create
		@user = current_user
		@job = Job.new(job_params)
		binding.pry
		if @job.save
			redirect_to @job, notice: "Job successfully created" 
		else
			render :new
		end
	end

	def new
		@job = Job.new
		@user = current_user
	end

	def edit
		@job = Job.find_by_id(params[:id])
	end

	def update
		@job = Job.find_by_id(params[:id])
		if @job.update(job_params)
			redirect_to @job
		end
	end

	def destroy
		@job.destroy(job_params)
		redirect_to @job, notice: "Job successfully deleted"
	end

	private

	def job_params
		params.require(:job).permit(:id, :user_id, :name, :cost, :description, :location, :category)
	end

	def user_params
	    params.require(:user).permit(:fname, :lname, :description, :email, :avatar, :id)
	end

end
