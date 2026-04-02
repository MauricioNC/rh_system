class AddDetailsToPosition < ActiveRecord::Migration[8.1]
  def change
    add_column :positions, :details, :uuid, null: false
    add_foreign_key :positions, :position_salaries, column: :details
    add_index :positions, :details, unique: true
  end
end
