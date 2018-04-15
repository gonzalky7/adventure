class PointOfInterest < ApplicationRecord
    belongs_to :location

  def has_name?
    true
  end

  def get_coordinates
    
  end

  def has_a_description?
    true
  end
end