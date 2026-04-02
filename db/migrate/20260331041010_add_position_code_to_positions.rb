class AddPositionCodeToPositions < ActiveRecord::Migration[8.1]
  def change
    add_column :positions, :position_code, :string, null: false
    add_index :positions, :position_code, unique: true
  end
end
