class ChangeFirstDoseInMedications < ActiveRecord::Migration[5.1]
  def change
    change_column :medications, :first_dose, :date
  end
end
