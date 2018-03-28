class AddUserToProviders < ActiveRecord::Migration[5.1]
  def change
    add_reference :providers, :user, :foreign_key true
  end
end
