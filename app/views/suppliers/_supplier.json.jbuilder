json.extract! supplier, :id, :name, :address, :email, :hotline, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
