# set up for API namespace
class Api::JobsController < ApplicationController

    def index
        jobs = Job.all
        render json: jobs
    end

    def create
        job = Job.create(job_params)
        render json: job
    end

    def show
        job = Job.find(params[:id])
        render json: job
    end

    def update 
        job = Job.find(params[:id])
        job.update(job_params)
        render json: job
    end

    def destroy
        job = Job.find(params[:id])
        job.destroy
        render json: "job destroyed"
    end

    private

    def job_params
        params.require(:job).permit(:company, :title, :url, :app_date, :app_followup, :app_notes, :interview_date, :interviewer_name, :interviewer_email, :interview_followup, :interview_notes)
    end

end