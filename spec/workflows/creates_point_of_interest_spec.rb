require "rails_helper"

RSpec.describe CreatesPointOfInterest do
  let(:creator) {CreatesPointOfInterest.new(name: "Pyramids of Giza", latitude: 29.9792)}

  describe "initialization" do
  	it "creates a point of interest given a name" do
  		creator.build
  		expect(creator.point_of_interest.name).to eq("Pyramids of Giza")
  	end

    it "creates a point of interest given a latitude" do
      creator.build
      expect(creator.point_of_interest.latitude).to eq(29.9792)
    end

  end

  describe "failure cases" do
    it "fails when trying to save a point of interest with no name" do
      creator = CreatesPointOfInterest.new(name: "")
      creator.create
      expect(creator).not_to be_a_success
    end
  end

end