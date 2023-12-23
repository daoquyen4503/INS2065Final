json.extract! shipment_detail, :id, :shipment_id, :book_id, :quantity, :created_at, :updated_at
json.url shipment_detail_url(shipment_detail, format: :json)
