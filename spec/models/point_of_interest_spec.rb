require 'rails_helper'

RSpec.describe PointOfInterest do 
  let (:poi) {PointOfInterest.new("Big Ben", 51.5007, - 0.1246)}

  it "knows that a poi should has a name" do
    expect(poi.has_name?).to be_truthy
  end


  it "has latitude-longitude coordinates" do
    expect(poi.get_coordinates).not_to be_empty
  end

end