class ChangePhoneToBeStringInInsurances < ActiveRecord::Migration[5.1]
  def change
    change_column :insurances, :phone, :string
  end
end
