class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :api_name
      t.float :latitude
      t.float :longitude
      t.string :location

      t.timestamps
    end
  end
end
