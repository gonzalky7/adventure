require "rails_helper"

RSpec.describe Location do
  let (:location) {Location.new("london", 51.509865, -0.118092)}
  it "knows a list of points of interest" do
    location.set_point_of_interest("Big Ben")
    expect(location.get_points_of_interest).to match_array(["Big Ben"])
  end

  it "has latitude-longitude coordinates" do
    expect(location.get_coordinates).not_to be_empty
  end
end
