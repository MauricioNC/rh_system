class CreateEmployees < ActiveRecord::Migration[8.1]
  def change
    create_table :employees, id: :uuid do |t|
      t.string :rfc, null: false, index: { unique: true }
      t.string :name, null: false
      t.string :mother_last_name, null: false
      t.string :father_last_name, null: false
      t.string :birth_date
      t.string :gender, null: false
      t.string :curp, null: false, index: { unique: true }
      t.string :nationality
      t.string :marital_status
      t.string :address

      t.timestamps
    end
  end
end
