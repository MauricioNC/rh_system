class CreateContractTypes < ActiveRecord::Migration[8.1]
  def change
    create_table :contract_types, id: :uuid do |t|
      t.string :description, null: false # This field will hold the description of the contract type (e.g., "Provisional", "Plaza reservada") Enum

      t.timestamps
    end
  end
end
