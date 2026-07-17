class AddStatusToEmployment < ActiveRecord::Migration[8.1]
  def change
    add_column :employments, :status, :string, default: "Inactivo"
  end
end
