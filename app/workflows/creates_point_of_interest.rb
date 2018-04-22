class CreatesPointOfInterest

  attr_accessor :name, :point_of_interest
  
  def initialize(name: "")
    @name = name
    @success = false
  end

  def success?
    @success
  end

  def build
    self.point_of_interest = PointOfInterest.new(name: name)
    point_of_interest
  end

  def create
    build
    result = point_of_interest.save
    @success = result
  end

end
