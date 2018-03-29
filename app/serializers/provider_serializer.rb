class ProviderSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone, :first_visit, :notes
  has_many :departments
end
