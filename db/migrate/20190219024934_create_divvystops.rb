class CreateDivvystops < ActiveRecord::Migration[5.2]
  def change
    create_table :divvystops do |t|
      t.integer :station_id
      t.string :station_name
      t.string :address
      t.integer :total_docks
      t.integer :docks_in_service
      t.string :status
      t.float :latitude
      t.float :longitude
      t.string :location

      t.timestamps
    end
  end
end
