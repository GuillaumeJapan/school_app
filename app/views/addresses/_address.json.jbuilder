json.extract! address, :id, :addressable_id, :addressable_type, :label, :country, :zip_code, :prefecture, :city, :addr1, :addr2, :created_at, :updated_at
json.url address_url(address, format: :json)
