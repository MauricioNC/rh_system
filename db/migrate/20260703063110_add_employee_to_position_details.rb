class AddEmployeeToPositionDetails < ActiveRecord::Migration[8.1]
  def change
    add_reference :position_details, :employee, null: false, foreign_key: true, type: :uuid
  end
end
