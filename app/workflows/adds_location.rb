class AddsLocation
  attr_accessor :name, :location, :latitude, :longitude
  def initialize(name: "", latitude: "", longitude: "", rating: "")
    @name = name
    @latitude = latitude
    @longitude = longitude
    @rating = rating
  end

  def build
    self.location = Location.new(name: @name, latitude: @latitude, longitude: @longitude, rating: @rating)
    location
  end

  def create
    build
    location.save
  end
end
