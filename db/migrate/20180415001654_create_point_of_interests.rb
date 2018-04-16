class CreatePointOfInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :point_of_interests do |t|
      t.references :location, foreign_key: true
      t.string :name
      t.integer :logitude
      t.integer :latitude
      t.text :description

      t.timestamps
    end
  end
end
