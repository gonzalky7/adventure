require 'rails_helper'

RSpec.describe PointOfInterest do 
  let (:point_of_interest) { PointOfInterest.new(
    name: "Big Ben",
    latitude: 51.5007,
    longitude: 0.1246,
    description: "Big Ben is the nickname for the Great Bell of the clock in London"
    )
  }

  it "knows that a point of interest should has a name" do
    expect(point_of_interest.name).to eq("Big Ben")
  end

  it "has latitude-longitude coordinates" do
    expect(point_of_interest.latitude).to eq(51.5007)
    expect(point_of_interest.longitude).to eq(0.1246)
  end

  it "has a description of point of interest" do
    expect(point_of_interest.description).not_to be_empty
  end

end