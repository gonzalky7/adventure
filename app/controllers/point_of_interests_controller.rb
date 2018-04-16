class PointOfInterestsController < ApplicationController
  
  def new
    @point_of_interests = PointOfInterest.new
  end

  def index
    @point_of_interests = PointOfInterest.all 
  end

  def create
    @workflow = CreatesPointOfInterest.new(name: params[:name])
    @workflow.create
    redirect_to point_of_interests_path
  end

end
