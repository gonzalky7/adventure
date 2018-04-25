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
     expect (itinerary.distance_to_next_location).to be_within(0.1).of(28.3)
  end

  it "knows its current location" do
    itinerary.current_location << location_1
    expect(itinerary.current_location.name).to eq "London"
  end

  it "knows its next location" do
    itinerary.next_location << location_2
  end

end
