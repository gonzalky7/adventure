class Itinerary < ApplicationRecord
  has_and_belongs_to_many :location

  def distance_to_next_location
  end
end
