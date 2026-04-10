class Employee < ApplicationRecord
  has_many :employee_movements
  has_many :employments
end
