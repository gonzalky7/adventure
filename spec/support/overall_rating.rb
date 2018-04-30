RSpec::Matchers.define :have_overall_rating do |expected|
  match do |actual|
    sum = 0
    actual.each { |i| sum += i.rating }
    sum == expected
  end


  description do
    "have overall rating to be #{expected}"
  end

  failure_message do |actual|
    "expected itinerary to return overall rating #{expected}, was #{sum}"
  end

  failure_message_when_negated do |actual|
    "expected itinerary  not to return overall rating of #{expected}, but it did"
  end
end