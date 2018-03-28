class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :medications
  has_many :insurances
  has_many :providers
end
