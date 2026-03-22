class CreateEmployeeMovements < ActiveRecord::Migration[8.1]
  def change
    create_table :employee_movements, id: :uuid do |t|
      t.date :creation_date, null: false
      t.string :description, null: false
      t.references :employee, null: false, foreign_key: true, type: :uuid
      t.references :employment, null: false, foreign_key: true, type: :uuid
      t.references :movement_catalog, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
