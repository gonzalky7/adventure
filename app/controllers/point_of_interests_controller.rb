class PointOfInterestsController < ApplicationController

  def new
    @point_of_interests = PointOfInterest.new
  end

  def index
    @point_of_interests = PointOfInterest.all
  end

  def create
    @workflow = CreatesPointOfInterest.new(name: params[:point_of_interest][:name])
    @workflow.create
    byebug
    redirect_to point_of_interests_path
  end

end
