class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :coordinates, array: true, default: []
      t.integer :logitude
      t.integer :latitude
      
      t.timestamps
    end
  end
end
