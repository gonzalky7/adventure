require_relative 'point_of_interest'

class Location < ApplicationRecord
  validates :name, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
  has_many :point_of_interests

  def get_coordinates
    @coordinates
  end

  def add_point_of_interest(point_of_interest)
    self.point_of_interests << point_of_interest
  end

end
