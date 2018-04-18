class PointOfInterest < ApplicationRecord
  belongs_to :location 
  validates :name, presence: true

  



end
