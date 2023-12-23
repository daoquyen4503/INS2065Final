class AddShipmentCodeToShipments < ActiveRecord::Migration[7.0]
  def change
    add_column :shipments, :shipment_code, :string
  end
end
