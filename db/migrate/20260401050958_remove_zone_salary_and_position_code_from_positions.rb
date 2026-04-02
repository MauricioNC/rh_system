class RemoveZoneSalaryAndPositionCodeFromPositions < ActiveRecord::Migration[8.1]
  def change
    remove_column :positions, :zone, :string
    remove_column :positions, :salary, :decimal, precision: 10, scale: 2
    remove_column :positions, :position_code, :string
  end
end
