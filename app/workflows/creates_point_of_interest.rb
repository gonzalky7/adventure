class CreatesPointOfInterest
  attr_accessor :name, :point_of_interest

  def initialize(name: "")
    @name = name
  end

  def build
    self.point_of_interest = PointOfInterest.new(name: name)
    point_of_interest
  end

  def create
    build
    point_of_interest.save
  end

end
