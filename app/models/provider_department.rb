class ProviderDepartment < ApplicationRecord
  belongs_to :provider
  belongs_to :department
end
