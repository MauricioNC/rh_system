class CreateEmployeeTypes < ActiveRecord::Migration[8.1]
  def change
    create_table :employee_types, id: :uuid do |t|
      t.string :description, null: false # This field will hold the description of the employee type (e.g., "Base", "Provisional", "Confianza", "Interino") Enum

      t.timestamps
    end
  end
end
