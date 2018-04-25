require "rails_helper"

 RSpec.describe "adding a location", type: :system do
   it "allows a user to add a location to their itinerary" do
     visit new_location_path
     fill_in "Name", with: "London"
     fill_in "Latitude", with: 51.509865
     fill_in "Longitude", with: -0.118092
     click_on("Create Location")
     visit projects_path
     expect(page).to have_content("London")
     expect(page).to have_content(51.509865)
   end
 end