class AddsLocation
  attr_accessor :name, :location
  def initialize(name: "")
    @name = name
  end
  def build
    self.location = Location.new(name: name)
    location
  end
  def create
    build
    location.save
  end
end
