class AddPositionCodeToPositionSalary < ActiveRecord::Migration[8.1]
  def change
    add_column :position_salaries, :position_code, :string, null: false
  end
end
