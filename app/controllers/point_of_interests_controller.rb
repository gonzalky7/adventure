class PointOfInterestsController < ApplicationController
  def new
    @point_of_interest = PointOfInterest.new
  end
end
