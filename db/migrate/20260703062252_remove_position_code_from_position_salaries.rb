class RemovePositionCodeFromPositionSalaries < ActiveRecord::Migration[8.1]
  def change
    remove_column :position_salaries, :position_code
    add_column :positions, :position_code, :string
  end
end
