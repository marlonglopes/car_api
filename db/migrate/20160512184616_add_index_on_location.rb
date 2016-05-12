class AddIndexOnLocation < ActiveRecord::Migration
  def change
    add_index(:locations, [:latitude, :longitude], unique: true, name: 'by_latitude_longitude')
  end
end
