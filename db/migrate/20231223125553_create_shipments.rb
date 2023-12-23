class CreateShipments < ActiveRecord::Migration[7.0]
  def change
    create_table :shipments do |t|
      t.references :supplier, null: false, foreign_key: true
      t.date :received_at
      t.references :staff, null: false, foreign_key: true

      t.timestamps
    end
  end
end
