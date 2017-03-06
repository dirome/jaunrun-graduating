class FavoursController < ApplicationController
  def new
  	@favour = current_juan.favours.build
  end

  def create
  	@favour = current_juan.favours.build

  	@favour.job_title = params[:favour][:job_title]
  	@favour.job_description = params[:favour][:job_description]
  	@favour.job_location = params[:favour][:job_location]

  	@favour.save

  	redirect_to '/../../'
  end

  def index
  	@favour = Favour.all
  end

  def show
   # params.require(:favour).permit(:job_title, :job_location, :job_description, :all_tags)
  	@favour = Favour.find(params[:id])
   @juan_posts = @juan.favours
  end

  def delete
    @attend = Attend.find(params[:id])
    @attend.destroy()

    redirect_to "/../../"
  end

  def home
  end
end
