class AddPositionToPositionSalary < ActiveRecord::Migration[8.1]
  def change
    add_reference :position_salaries, :position, null: false, foreign_key: true, type: :uuid
  end
end
