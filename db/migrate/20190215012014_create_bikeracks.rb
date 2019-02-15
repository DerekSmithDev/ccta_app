class CreateBikeracks < ActiveRecord::Migration[5.2]
  def change
    create_table :bikeracks do |t|
      t.integer :station_id
      t.string :address
      t.integer :ward
      t.integer :community_area
      t.string :community_name
      t.integer :totinstall
      t.integer :historical

      t.timestamps
    end
  end
end
