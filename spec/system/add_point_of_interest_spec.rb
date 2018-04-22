require 'rails_helper'

RSpec.describe "adding a point of interest", type: :system do
	it "allows a user to create a point of interest" do
		visit new_point_of_interest_path
		fill_in "Name", with: "Giza pyramids"
    fill_in "Latitude", with: 29.9792
		click_on ("Create Point of interest")
		visit point_of_interests_path
		expect(page).to have_content("Giza pyramids")
	end

  it "does not allow a user to create a point of interest without a name" do
    visit new_point_of_interest_path
    fill_in "Name", with: ""
    fill_in "Latitude", with: 29.9792
    click_on("Create Point of interest")
    expect(page).to have_selector(".new_point_of_interest")
  end
end
