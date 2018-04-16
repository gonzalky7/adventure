require_relative 'point_of_interest'

class Location < ApplicationRecord
  attr_accessor :name
  attr_accessor :latitude
  attr_accessor :longitude

  has_many :point_of_interests

  def get_coordinates
    @coordinates
  end

  def add_point_of_interest(point_of_interest)
    self.point_of_interests << point_of_interest
  end

end
