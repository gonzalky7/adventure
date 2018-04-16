class LocationsController < ApplicationController
  def new
    @locations = Location.new
  end
  def index
    @locations = Location.all
  end

  def create
    @workflow = AddsLocation.new(name: params[:location][:name])
    @workflow.create
    redirect_to locations_path
  end
end
