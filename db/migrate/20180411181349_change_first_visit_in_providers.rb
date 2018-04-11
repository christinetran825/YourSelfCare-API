class ChangeFirstVisitInProviders < ActiveRecord::Migration[5.1]
  def change
    change_column :providers, :first_visit, :date
  end
end
