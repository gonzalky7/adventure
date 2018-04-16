require_relative 'point_of_interest'

class Location < ApplicationRecord
  attr_accessor :points_of_interest
  attr_accessor :name
  attr_accessor :latitude
  attr_accessor :longitude
  # def initialize
  #   @points_of_interest = []
  #   @coordinates = [latitude, longitude]
  # end

  def get_coordinates
    @coordinates
  end
end
