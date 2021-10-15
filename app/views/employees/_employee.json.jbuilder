json.extract! employee, :id, :last_name, :first_name, :birth_date, :contract_type, :position, :visa_status, :visa_expiration, :created_at, :updated_at
json.url employee_url(employee, format: :json)
