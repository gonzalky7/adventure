require 'rails_helper'

RSpec.describe Itinerary do
  itinerary  = FactoryBot.build(:itinerary)
  location_1 = FactoryBot.build(:location, name: "London",
                                           latitude: 51.509865,
                                           longitude: -0.118092,
                                           rating: 10)

  location_2 = FactoryBot.build(:location, name: "Bath",
                                            latitude: 51.3751000,
                                            longitude: -2.3617200,
                                            rating: 5)
  location_3 = FactoryBot.build(:location, name: "Kingston",
                                            latitude: 51.4123,
                                            longitude: -0.3007,
                                            rating: 1)

  let(:the_big_d) {DistanceBigDependancy.new}
  let(:the_big_fake_d) {FakeBigDependancy.new}

  it "knows how to calculate distance between two locations" do
    itinerary.current_location = location_1
    itinerary.next_location = location_2
    expect(itinerary.distance_to_next_location).to be_in_proximity_of(97.17)
  end

  it "knows its current location" do
    itinerary.current_location = location_1
    expect(itinerary.current_location.name).to eq "London"
  end

  it "knows its next location" do
    itinerary.next_location = location_2
    expect(itinerary.next_location.name).to eq "Bath"
  end

  it "knows its last location" do
    itinerary.last_location = location_3
    expect(itinerary.last_location.name).to eq "Kingston"
  end

  it "has a rating" do
    expect(itinerary.rating).to eq 35
  end


  it "knows what location has the highest rating" do
    locations = [location_1, location_2, location_3]
    expect(locations).to be_highest_rating(10)
    expect(locations).not_to be_highest_rating(1)
  end

  it "knows its overall rating from each location" do
    locations = [location_1, location_2, location_3]
    expect(locations).to have_overall_rating(16)
  end

  it "knows how to calculate the time to the next location" do
    expect(itinerary.time_to_next_location(the_big_fake_d)).to eq 5
  end

  it "knows how to calculate the time to the next location with stub" do
    big_dependancy_twin = double()
    allow(big_dependancy_twin).to receive(:execute).and_return(5)
    expect(itinerary.time_to_next_location(big_dependancy_twin)).to eq 5
  end

  # it "original slow test: rating big dependency" do
  #   expect(itinerary.calculations_of_ratings(big_dependency)).to eq 5
  # end

  let(:big_dependency) {RatingBigDependency.new}
  let(:fake) {FakeRatingBigDependency.new}

  it "can create a double: rating big dependency" do
    stub = Itinerary.new()
    big_depend = double(:big_dependency, execute: 5)
    result = stub.calculations_of_ratings(big_depend)
    expect(result).to eq 5
  end

  it "passing fake to method: rating" do
    expect(itinerary.calculations_of_ratings(fake)).to eq 5
  end
end
