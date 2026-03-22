class CreateAdscriptionUnities < ActiveRecord::Migration[8.1]
  def change
    create_table :adscription_unities, id: :uuid do |t|
      t.string :adsc_unity_desc, null: false
      t.references :responsibility_center, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
