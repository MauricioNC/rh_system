class EmployeeMovement < ApplicationRecord
  belongs_to :employee
  belongs_to :employment, optional: true
  belongs_to :movement_catalog
  belongs_to :user
end
