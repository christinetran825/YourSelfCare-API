class User < ApplicationRecord
  has_secure_password
  has_many :medications, :insurances, :providers
  accepts_nested_attributes_for :medications, :insurances, :providers 
end
