require "rails_helper"
RSpec.describe AddsLocation do
  it "adds a location given a name" do
    adder = AddsLocation.new(name: "London")
    adder.build
    expect(adder.project.name).to eq("London")
  end
end
