class AddBehaviorToConditions < ActiveRecord::Migration[5.1]
  def change
    add_reference :conditions, :behavior, foreign_key: true
  end
end
