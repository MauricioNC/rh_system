class RemoveDetailsFromPositions < ActiveRecord::Migration[8.1]
  def change
    remove_index :positions, name: "index_positions_on_details"
    remove_foreign_key :positions, :position_salaries, if_exists: true
    remove_column :positions, :details
  end
end
