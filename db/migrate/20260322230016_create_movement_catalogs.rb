class CreateMovementCatalogs < ActiveRecord::Migration[8.1]
  def change
    create_table :movement_catalogs, id: :uuid do |t|
      t.string :movement_number, null: false, index: { unique: true }
      t.string :description, null: false

      t.timestamps
    end
  end
end
