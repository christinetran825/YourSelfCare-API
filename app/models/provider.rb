class Provider < ApplicationRecord
  belongs_to :user
  has_many :provider_departments, :dependent => :destroy
  has_many :departments, through: :provider_departments

  validates_presence_of :name, :address, :phone, :first_visit, :notes
  validates :phone, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Use Telephone Format" }

  def make_title_case
    self.name = self.name.titlecase
    self.address = self.address.titlecase
  end
end
