class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :itineraries, :locations do |t|
      t.index [:itinerary_id, :location_id]
      # t.index [:location_id, :itinerary_id]
    end
  end
end
