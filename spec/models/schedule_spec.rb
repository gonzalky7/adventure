require "rails_helper"

RSpec.describe Schedule do
  it "considers a scheule with no tasks to be done" do
  schedule = Schedule.new
  expect(schedule.done?).to be_truthy
  end

  it "knows that a schedule with an incomplete activity is not done" do
    schedule = Schedule.new
    activity = Activity.new
    schedule.activities << activity
    expect(schedule.done?).to be_falsy
  end
end

