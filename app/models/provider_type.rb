class ProviderType < ApplicationRecord
  has_many :providers_provider_types
  has_many :providers, through: :provider_providers_types
end
