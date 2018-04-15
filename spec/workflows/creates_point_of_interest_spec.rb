require "rails_helper"

RSpec.describe "CreatesPointOfInterest" do

  describe "initialiazation" do
  	it "creates a point of interest given a name" do
  		creator = CreatesPointOfInterest.new(name: "Pyramids of Giza")
  		creator.build
  		expect(creator.point_of_interest.name).to eq("Pyramids of Giza")
  	end
  end

end