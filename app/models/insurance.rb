class Insurance < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :address, :phone, :notes

  def make_title_case
    self.name = self.name.titlecase
    self.address = self.address.titlecase
  end
end
