class CreateCtaBusStops < ActiveRecord::Migration[5.2]
  def change
    create_table :cta_bus_stops do |t|
      t.integer :station_id
      t.string :stop_name
      t.string :stop_desc
      t.integer :location_type
      t.integer :parent_station
      t.integer :wheelchair_boarding

      t.timestamps
    end
  end
end
