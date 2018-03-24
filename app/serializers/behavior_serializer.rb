class BehaviorSerializer < ActiveModel::Serializer
  attributes :id, :name, :details
  has_many :conditions
end
