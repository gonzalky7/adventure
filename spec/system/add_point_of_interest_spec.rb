require 'rails_helper'

RSpec.describe "adding a point of interest", type: :system do
	it "allows a user to create a point of interenst" do
	visit new_point_of_interest_path
	fill_in "Name", with: "Giza pyramids"
	click_on ("Create Point Of Interest")
	visit point_of_interest_path 
	expect(page).to have_content("Giza pyramids")
	end
end