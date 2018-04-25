require_relative 'point_of_interest'

class Location < ApplicationRecord
  validates :name, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
  validates :rating, presence: true
  has_many :point_of_interests
  has_and_belongs_to_many :itinerary

  def get_coordinates
    # @coordinates = {:latitude, :longitude }
  end

  def add_point_of_interest(point_of_interest)
    self.point_of_interests << point_of_interest
  end

end
