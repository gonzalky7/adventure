require 'rails_helper'

RSpec.describe Location do
  let (:location) { Location.new(name: "London",latitude: 51.509865,longitude: -0.118092,
    rating: 5)
  }

  let(:big_ben) { PointOfInterest.new(name: "Big Ben")}

  it "knows a list of points of interest" do
    location.add_point_of_interest(big_ben)
    expect(location.point_of_interests).not_to be_empty
  end

  it "has latitude-longitude coordinates" do
    expect(location.latitude).to eq 51.509865
    expect(location.longitude).to eq -0.118092
  end

  it "has a rating" do
    expect(location.rating).to eq 5
  end
end
