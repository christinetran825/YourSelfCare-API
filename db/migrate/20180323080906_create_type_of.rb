class CreateTypeOf < ActiveRecord::Migration[5.1]
  def change
    create_table :type_of do |t|
      t.string :name
      t.integer :behavior_id

      t.timestamps
    end
  end
end
