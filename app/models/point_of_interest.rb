class PointOfInterest
  attr_accessor :tourism
  
  def initialize (name, latitude, longitude)
   @coordinates = [latitude, longitude]
   @tourism = 100000
  end

  def has_name?
    true
  end

  def get_coordinates
    @coordinates
  end

  def has_high_tourism?
    @tourism
  end


end