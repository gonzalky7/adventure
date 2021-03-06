class Itinerary < ApplicationRecord
  has_and_belongs_to_many :location
  attr_accessor :current_location
  attr_accessor :next_location
  attr_accessor :last_location

  def distance_to_next_location
    current_location = Geokit::LatLng.new(
                       @current_location.latitude,
                       @current_location.longitude)
    destination = [@next_location.latitude,@next_location.longitude]
    current_location.distance_to(destination)
  end

  def time_to_next_location(distance_big_dependancy)
    distance_big_dependancy.execute
  end

  def calculations_of_ratings(rating_big_dependency)
    rating_big_dependency.execute
  end
end
