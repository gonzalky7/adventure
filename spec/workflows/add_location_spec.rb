require "rails_helper"
RSpec.describe AddLocation do
  it "adds a location given a name" do
    adder = AddLocation.new(name: "London")
    adder.build
    expect(adder.project.name).to eq("London")
  end
end
