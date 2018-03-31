class AddUserToBehavior < ActiveRecord::Migration[5.1]
  def change
    add_reference :behaviors, :user, foreign_key: true
  end
end
