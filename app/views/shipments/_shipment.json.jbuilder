json.extract! shipment, :id, :supplier_id, :received_at, :staff_id, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
