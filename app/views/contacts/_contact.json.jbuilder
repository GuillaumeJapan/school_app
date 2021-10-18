json.extract! contact, :id, :last_name, :first_name, :relationship, :phone, :workplace_phone, :email, :note, :created_at, :updated_at
json.url contact_url(contact, format: :json)
