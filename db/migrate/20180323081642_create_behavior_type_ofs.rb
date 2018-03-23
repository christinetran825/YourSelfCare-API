class CreateBehaviorTypeOfs < ActiveRecord::Migration[5.1]
  def change
    create_table :behavior_type_ofs do |t|
      t.integer :behavior_id
      t.integer :type_of_id

      t.timestamps
    end
  end
end
