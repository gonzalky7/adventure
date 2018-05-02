require 'rails_helper'

RSpec.describe PointOfInterest do 
  let (:point_of_interest) { FactoryBot.build(:point_of_interest)} 

  it "knows that a point of interest should has a name" do
    expect(point_of_interest.name).to eq("Great Barrier Reef")
  end

  it "has latitude-longitude coordinates" do
    expect(point_of_interest.latitude).to eq(51.5007)
    expect(point_of_interest.longitude).to eq(1345.45)
  end

  it "has a description of point of interest" do
    expect(point_of_interest.description).not_to be_empty
  end

end