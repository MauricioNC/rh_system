class AddReferencesFromResponsibilityCenterToAdscriptionUnitiesAndEmployments < ActiveRecord::Migration[8.1]
  def change
    add_reference :adscription_unities, :responsibility_center, type: :uuid, foreign_key: true, index: true
    add_reference :employments, :responsibility_center, type: :uuid, foreign_key: true, index: true
  end
end
