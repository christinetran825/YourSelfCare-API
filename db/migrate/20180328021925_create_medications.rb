class CreateMedications < ActiveRecord::Migration[5.1]
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :dose
      t.string :prescribed
      t.datetime :first_dose
      t.text :notes

      t.timestamps
    end
  end
end
