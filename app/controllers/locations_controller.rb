class LocationsController < ApplicationController
  def new
    @locations = Location.new
  end
  def index
    @locations = Location.all
  end

  def create
    @workflow = AddsLocation.new(name: params[:location][:name], 
      latitude: params[:location][:latitude], 
      longitude: params[:location][:longitude],
      rating: params[:location][:rating])

    if @workflow.nil? || @workflow.name == ""
      redirect_to new_location_path
    else
      @workflow.create
      redirect_to locations_path
    end
  end
end
