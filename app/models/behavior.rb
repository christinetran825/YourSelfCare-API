class Behavior < ApplicationRecord
  has_many :conditions
  accepts_nested_attributes_for :conditions
end
