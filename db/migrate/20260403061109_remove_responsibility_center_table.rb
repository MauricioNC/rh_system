class RemoveResponsibilityCenterTable < ActiveRecord::Migration[8.1]
  def change
    remove_reference :adscription_unities, :responsibility_center, null: false, foreign_key: true
    remove_reference :employments, :responsibility_center, null: false, foreign_key: true
    remove_index :adscription_unities, :responsibility_center_id, name: "index_adscription_unities_on_responsibility_center_id", if_exists: true
    remove_index :employments, :responsibility_center_id, name: "index_employments_on_responsibility_center_id", if_exists: true
    drop_table :responsibility_centers
  end
end
