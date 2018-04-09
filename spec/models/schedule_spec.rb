require "rails_helper"

RSpec.describe Schedule do
  let (:schedule) {Schedule.new()}

  it "considers a scheule with no acitivies to be done" do
  expect(schedule.done?).to be_truthy
  end

  it "knows that a schedule with an incomplete activity is not done" do
    activity = Activity.new
    schedule.activities << activity
    expect(schedule.done?).to be_falsy
  end
end

