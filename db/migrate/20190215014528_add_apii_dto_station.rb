class AddApiiDtoStation < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :api_id, :integer
  end
end
