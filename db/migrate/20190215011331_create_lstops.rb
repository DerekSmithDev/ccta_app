class CreateLstops < ActiveRecord::Migration[5.2]
  def change
    create_table :lstops do |t|
      t.integer :station_id
      t.integer :parent_stop_id
      t.string :direction_id
      t.string :stop_name
      t.string :station_name
      t.string :station_descriptive_name
      t.string :map_id
      t.boolean :ADA
      t.boolean :red
      t.boolean :blue
      t.boolean :green
      t.boolean :brown
      t.boolean :purple
      t.boolean :purple_express
      t.boolean :yellow
      t.boolean :pink
      t.boolean :orange

      t.timestamps
    end
  end
end
