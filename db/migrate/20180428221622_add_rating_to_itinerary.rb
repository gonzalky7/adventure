class AddRatingToItinerary < ActiveRecord::Migration[5.2]
  def change
    add_column :itineraries, :rating, :integer
  end
end
