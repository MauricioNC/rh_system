class Employment < ApplicationRecord
  belongs_to :employee
  belongs_to :employee_type
  belongs_to :contract_type
  belongs_to :position
  belongs_to :responsibility_center
end
