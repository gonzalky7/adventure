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
    big_dependancy_twin = object_double(DistanceBigDependancy.new)
    big_dependancy_twin.stub(:execute) { 5 }
    expect(itinerary.time_to_next_location(big_dependancy_twin)).to eq 5
  end

end
