class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :type_of_stop
      t.string :stop_name
      t.datetime :last_visit
      t.string :address

      t.timestamps
    end
  end
end
