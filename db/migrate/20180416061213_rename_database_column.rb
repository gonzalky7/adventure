class RenameDatabaseColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :point_of_interests, :logitude, :longitude
  end
end
