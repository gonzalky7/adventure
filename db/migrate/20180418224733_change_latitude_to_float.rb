class ChangeLatitudeToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :point_of_interests, :latitude, :float
    change_column :point_of_interests, :longitude, :float
  end
end
