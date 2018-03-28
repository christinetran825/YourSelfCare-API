class AddUserToInsurances < ActiveRecord::Migration[5.1]
  def change
    add_reference :insurances, :user, foreign_key: true
  end
end
