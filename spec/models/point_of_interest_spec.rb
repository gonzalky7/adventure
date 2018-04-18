require 'rails_helper'

RSpec.describe PointOfInterest do 
  let (:point_of_interest) { PointOfInterest.new(
    name: "Big Ben",
    latitude: 51.5007,
    longitude: 0.1246)
  }

  it "knows that a point of interest should has a name" do
    expect(point_of_interest.has_name?).to be_truthy
  end

  it "has latitude-longitude coordinates" do
    expect(point_of_interest.latitude).not_to be_empty
    expect(point_of_interest.longitude).not_to be_empty
  end

  it "has a desciption of point of interest" do
    expect(point_of_interest.has_a_description?).to be_truthy
  end

end