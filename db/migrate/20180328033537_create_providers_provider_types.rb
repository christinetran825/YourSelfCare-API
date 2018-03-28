class CreateProvidersProviderTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :providers_provider_types do |t|
      t.integer :provider_id
      t.integer :provider_types_id

      t.timestamps
    end
  end
end
