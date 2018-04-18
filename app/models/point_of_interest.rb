class PointOfInterest < ApplicationRecord
  belongs_to :location
  validates :name, presence: true

  def has_name?
    true
  end


  def has_a_description?
    true
  end
end
