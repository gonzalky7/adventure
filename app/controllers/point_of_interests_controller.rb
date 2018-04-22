class PointOfInterestsController < ApplicationController

  def new
    @point_of_interest = PointOfInterest.new
  end

  def index
    @point_of_interests = PointOfInterest.all
  end

  def create
    @workflow = CreatesPointOfInterest.new(name: params[:point_of_interest][:name])
    @workflow.create
    if @workflow.success?
      redirect_to point_of_interests_path
    else
      @point_of_interest = @workflow.point_of_interest
      render :new
    end
  end

end
