class CreateTypeOfs < ActiveRecord::Migration[5.1]
  def change
    create_table :type_ofs do |t|
      t.string :name
      t.integer :behavior_id

      t.timestamps
    end
  end
end
