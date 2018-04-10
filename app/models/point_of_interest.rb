class PointOfInterest
  attr_accessor :tourism

  def initialize (name, latitude, longitude)
   @coordinates = [latitude, longitude]
   @tourism = 0
  end

  def has_name?
    true
  end

  def get_coordinates
    @coordinates
  end

  def has_high_tourism?
    return @tourism = 1000000
  end


end