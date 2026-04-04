class CreateResponsibilityCenters < ActiveRecord::Migration[8.1]
  def change
    create_table :responsibility_centers, id: :uuid, default: -> { "gen_random_uuid()" } do |t|
      t.string :resp_center_desc, null: false
      t.integer :zone, null: false
      t.string :responsible

      t.timestamps
    end
  end
end
