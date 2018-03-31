class User < ApplicationRecord
  has_secure_password
  has_many :medications
  has_many :insurances
  has_many :providers
  accepts_nested_attributes_for :medications, :insurances, :providers

  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
