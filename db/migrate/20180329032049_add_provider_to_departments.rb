class AddProviderToDepartments < ActiveRecord::Migration[5.1]
  def change
    add_reference :departments, :provider, foreign_key: true
  end
end
