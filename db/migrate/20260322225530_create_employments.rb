class CreateEmployments < ActiveRecord::Migration[8.1]
  def change
    create_table :employments, id: :uuid do |t|
      t.references :employee, null: false, foreign_key: true, type: :uuid
      t.references :employee_type, null: false, foreign_key: true, type: :uuid
      t.references :contract_type, null: false, foreign_key: true, type: :uuid
      t.references :position, null: false, foreign_key: true, type: :uuid
      t.references :responsibility_center, null: false, foreign_key: true, type: :uuid
      t.date :start_date, null: false
      t.date :end_date

      t.timestamps
    end
  end
end
