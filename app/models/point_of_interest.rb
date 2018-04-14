class PointOfInterest
  attr_accessor :tourism
  
  def initialize (name, latitude, longitude)
   @coordinates = [latitude, longitude]
  end

  def has_name?
    true
  end

  def get_coordinates
    @coordinates
  end
end