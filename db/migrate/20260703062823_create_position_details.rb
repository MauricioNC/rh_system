class CreatePositionDetails < ActiveRecord::Migration[8.1]
  def change
    create_table :position_details, id: :uuid do |t|
      t.references :position, null: false, foreign_key: true, type: :uuid
      t.references :position_salary, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
