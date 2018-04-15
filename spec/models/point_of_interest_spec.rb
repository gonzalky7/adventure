require 'rails_helper'

RSpec.describe PointOfInterest do 
  let (:point_of_interest) { PointOfInterest.new(name: "Big Ben") }

  it "knows that a point of interest should has a name" do
    expect(point_of_interest.has_name?).to be_truthy
  end


  it "has latitude-longitude coordinates" , :pending do
    #expect(point_of_interest.get_coordinates).not_to be_empty
  end

  it "has a desciption of point of interest" do
    expect(point_of_interest.has_a_description?).to be_truthy
  end

end