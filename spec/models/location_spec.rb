require "rails_helper"

RSpec.describe Location do
  it "knows a list of points of interest" do
    location = Location.new("london", 51.509865, -0.118092)
    points_of_interest = []
    expect(location.get_points_of_interst).to eq points_of_interest
  end

  it "has latitude-longitude coordinates" do
    loction = Location.new("london", 51.509865, -0.118092)
    expect(location.get_coodinates).to eq [51.509865, -0.118092]
  end
end
