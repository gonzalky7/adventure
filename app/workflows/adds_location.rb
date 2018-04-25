class AddsLocation
  attr_accessor :name, :location, :latitude, :longitude
  def initialize(name: "", latitude: "", longitude: "")
    @name = name
    @latitude = latitude
    @longitude = longitude
  end

  def build
    self.location = Location.new(name: @name, latitude: @latitude, longitude: @longitude)
    location
  end

  def create
    build
    location.save
  end
end
