class AddColumnToEmployment < ActiveRecord::Migration[8.1]
  def change
    add_column :employments, :budget_key, :string, null: false
  end
end
