class Department < ApplicationRecord
  belongs_to :provider
  has_many :provider_departments
  has_many :providers, through: :provider_departments
end
