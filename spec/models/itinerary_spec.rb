require 'rails_helper'

RSpec.describe Itinerary do

  let (:itinerary){ Itinerary.new(
    name: "England Trip"
    )}
  let (:location_1) { Location.new(
    name: "London",
    latitude: 51.509865,
    longitude: -0.118092)
  }
  let (:location_2) { Location.new(
    name: "Bath",
    latitude: 51.509865,
    longitude: -0.118092)
  }
  it "knows how to calculate distance between two locations" do
    # expect (itinerary.distance_to_next_location).to
  end
end
