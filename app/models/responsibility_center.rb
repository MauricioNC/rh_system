class ResponsibilityCenter < ApplicationRecord
  has_many :employments
  has_one :adscription_unity
end
