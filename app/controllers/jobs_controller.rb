class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
    @ship = Ship.all
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to job_path(@job)
    else
      render 'new'
    end
  end

  def show
    @job = Job.find(params[:id])
    @ships = Ship.find(@job.ship_ids)

  end

  def edit
    @job = Job.find(params[:id])
    @ships = Ship.find(@job.ship_ids)

  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to job_path(@job)
    else
      render 'edit'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end

  private
    def job_params
      params.require(:job).permit(:jobTitle, :description, :jobCost, :origin, :destination,:containersNeeded, ship_ids:[])
    end

end
