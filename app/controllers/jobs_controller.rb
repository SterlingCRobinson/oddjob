class JobsController < ApplicationController

	def index
		@jobs = Job.all.sort_by { |r| r.id }.reverse
	end

	def show
		@job = Job.find_by_id(params[:id])
		@user = @job.user_id
		@u = User.find_by_id(@user)
	end

	def create
		@job = Job.new(job_params)
		if @job.save
			redirect_to @job, notice: "Job successfully created" 
		else
			render :new
		end
	end

	def new
		@job = Job.new
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
		@job = Job.find_by_id(params[:id])
		@job.destroy
		redirect_to "/jobs", notice: "Job successfully deleted"
	end

	private

	def job_params
		params.require(:job).permit(:id, :user_id, :title, :cost, :description, :location, :category)
	end

end
