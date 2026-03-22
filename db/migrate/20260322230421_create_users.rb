class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :username, null: false, index: { unique: true }
      t.string :full_name, null: false
      t.string :email
      t.string :password, null: false, index: { unique: true }
      t.string :contact_number, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
