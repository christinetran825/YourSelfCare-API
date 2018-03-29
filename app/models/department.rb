class Department < ApplicationRecord
  has_many :providers_departments
  has_many :providers, through: :providers_departments
end
