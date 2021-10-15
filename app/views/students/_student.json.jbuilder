json.extract! student, :id, :school_id, :group_id, :siblinghood_id, :last_name, :first_name, :birth_date, :inscription_date, :note, :created_at, :updated_at
json.url student_url(student, format: :json)
