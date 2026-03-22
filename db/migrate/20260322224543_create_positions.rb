class CreatePositions < ActiveRecord::Migration[8.1]
  def change
    create_table :positions, id: :uuid do |t|
      t.string :position_desc, null: false
      t.decimal :salary, null: false, precision: 10, scale: 2
      t.integer :zone, null: false

      t.timestamps
    end
  end
end
