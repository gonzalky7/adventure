require 'rails_helper'

RSpec.describe PointOfInterest do 
  let (:point_of_interest) {PointOfInterest.new("Big Ben", 51.5007, - 0.1246)}

  it "knows that a poi should has a name" do
    expect(point_of_interest.has_name?).to be_truthy
  end


  it "has latitude-longitude coordinates" do
    expect(point_of_interest.get_coordinates).not_to be_empty
  end

end