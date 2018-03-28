class ChangePhoneToBeStringInProviders < ActiveRecord::Migration[5.1]
  def change
    change_column :providers, :phone, :string
  end
end
