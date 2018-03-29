class Provider < ApplicationRecord
  belongs_to :user
  has_many :providers_departments
  has_many :departments, through: :providers_departments
  accepts_nested_attributes_for :departments, :allow_destroy => :true
end
