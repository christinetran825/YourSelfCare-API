class AddConditionToBehaviors < ActiveRecord::Migration[5.1]
  def change
    add_reference :behaviors, :condition, foreign_key: true
  end
end
