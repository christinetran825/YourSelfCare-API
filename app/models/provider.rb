class Provider < ApplicationRecord
  belongs_to :user
  has_many :provider_departments
  has_many :departments, through: :provider_departments
  accepts_nested_attributes_for :departments, :allow_destroy => :true
end
