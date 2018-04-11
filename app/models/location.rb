require_relative 'point_of_interest'

class Location


  def initialize (name, latitude, longitude)
   @points_of_interest = []
   @coordinates = [latitude, longitude]
  end

  def get_points_of_interest
    @points_of_interest
  end

  def add_point_of_interest item
    @points_of_interest.push(item)
  end

  def get_coordinates
    @coordinates
  end
end
