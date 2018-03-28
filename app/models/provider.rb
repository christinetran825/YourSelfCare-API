class Provider < ApplicationRecord
  belongs_to :user
  has_many :providers_provider_types
  has_many :provider_types, through: :providers_provider_types
  accepts_nested_attributes_for :provider_types
end
