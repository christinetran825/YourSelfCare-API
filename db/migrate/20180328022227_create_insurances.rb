class CreateInsurances < ActiveRecord::Migration[5.1]
  def change
    create_table :insurances do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.text :notes

      t.timestamps
    end
  end
end
