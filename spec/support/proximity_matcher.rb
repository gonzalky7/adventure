RSpec::Matchers.define :be_in_proximity_of do |expected|
  match do |actual|
    lowest = expected - 1.1
    highest = expected + 1.1
    actual > lowest && actual < highest
  end
end
