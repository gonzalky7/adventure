RSpec::Matchers.define :be_highest_rating do |expected|
  match do |actual|
    highest = actual.max_by{|k| k[:rating]} [:rating] 
    highest == expected
  end


  description do
    "have highest rating to be #{expected}"
  end

  failure_message do |actual|
    "expected location #{actual.name} to return higest rating #{expected}, was #{actual}"
  end

  failure_message_when_negated do |actual|
    "expected location #{actual.name} not to return highest rating #{expected}, but it did"
  end
end