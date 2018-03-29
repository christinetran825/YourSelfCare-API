class Department < ApplicationRecord
  has_many :provider_departments
  has_many :providers, through: :provider_departments
end
