class CreateShipmentDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :shipment_details do |t|
      t.references :shipment, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
