class AddRatingToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :raiting, :integer
  end
end
