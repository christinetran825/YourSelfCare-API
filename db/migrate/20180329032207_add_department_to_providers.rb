class AddDepartmentToProviders < ActiveRecord::Migration[5.1]
  def change
    add_reference :providers, :department, foreign_key: true
  end
end
