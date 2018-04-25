class PointOfInterest < ApplicationRecord
  belongs_to :location, optional: true 
  validates :name, presence: true
  # validates :longitude, presence: true
   validates :latitude, presence: true
  # validates :description, presence: true
end
