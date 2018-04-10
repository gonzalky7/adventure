require 'rails_helper'

RSpec.describe PointOfInterest do 
  let (:poi) {PointOfInterest.new("Big Ben", 51.5007, - 0.1246)}

  it "knows that a poi should has a name" do
    expect(poi.has_name?).to be_truthy
  end


  it "has latitude-longitude coordinates" do
    expect(poi.get_coordinates).not_to be_empty
  end

  it "considers a poi with a high tourist visitation (> 1000000)"  do
    expect(poi.has_high_tourism?).to eq(1000000)
  end


end