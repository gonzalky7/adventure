require 'rails_helper'

RSpec.describe Itinerary do

  let (:itinerary){ Itinerary.new(
    name: "England Trip"
    )}
  let (:location_1) { Location.new(
    name: "London",
    latitude: 51.509865,
    longitude: -0.118092,
    rating:10)
  }
  let (:location_2) { Location.new(
    name: "Bath",
    latitude: 51.509865,
    longitude: -0.118092,
    rating: 5)
  }
  let (:location_3) { Location.new(
    name: "Bath",
    latitude: 51.509865,
    longitude: -0.118092,
    rating: 1)
  }
  it "knows how to calculate distance between two locations" do
     expect (itinerary.distance_to_next_location).should be_within(0.1).of(28.3)
  end

  it "knows it current location" do
    
  end

  
end
