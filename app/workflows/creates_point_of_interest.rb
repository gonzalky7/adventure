class CreatesPointOfInterest

  attr_accessor :name, :point_of_interest ,:latitude
  
  def initialize(name: "", latitude: "")
    @name = name
    @latitude = latitude
    @success = false
  end

  def success?
    @success
  end

  def build
    self.point_of_interest = PointOfInterest.new(name: name, latitude: latitude)
    point_of_interest
  end

  def create
    build
    result = point_of_interest.save
    @success = result
  end

end
