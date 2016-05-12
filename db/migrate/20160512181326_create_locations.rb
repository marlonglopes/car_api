class CreateLocations < ActiveRecord::Migration
  def change
      create_table :locations do |t|

      t.integer :vehicleCount
      t.decimal :latitude
      t.string :restrictedP
      t.text :description
      t.integer :marketId
      t.integer :locationId
      t.integer :hasVans
      t.decimal :longitude
      t.integer :zipfleetId

      t.timestamps null: false
    end
  end
end
