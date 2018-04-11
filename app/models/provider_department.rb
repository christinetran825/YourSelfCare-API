class ProviderDepartment < ApplicationRecord
  belongs_to :provider, optional: true
  belongs_to :department, optional: true
end
