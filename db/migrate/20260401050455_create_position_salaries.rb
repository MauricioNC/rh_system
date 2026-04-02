class CreatePositionSalaries < ActiveRecord::Migration[8.1]
  def change
    create_table :position_salaries, id: :uuid do |t|
      t.string :zone, null: false
      t.decimal :salary, precision: 10, scale: 2, null: false

      t.timestamps
    end
  end
end
