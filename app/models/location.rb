require_relative 'point_of_interest'

class Location < ApplicationRecord
  

  has_many :point_of_interests

  def get_coordinates
    @coordinates
  end

  def add_point_of_interest(point_of_interest)
    self.point_of_interests << point_of_interest
  end

end
