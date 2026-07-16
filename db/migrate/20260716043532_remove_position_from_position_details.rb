class RemovePositionFromPositionDetails < ActiveRecord::Migration[8.1]
  def change
    remove_reference :position_details, :position, foreign_key: true, index: true
  end
end
