class AddAdscriptionKeyToAdscriptionUnity < ActiveRecord::Migration[8.1]
  def change
    add_column :adscription_unities, :adsc_key, :integer
  end
end
