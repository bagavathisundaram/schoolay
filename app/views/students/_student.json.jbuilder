json.extract! student, :id, :name, :rollno, :parent_primary_email, :parent_primary_phone, :class, :ordered, :payment_token, :school_id, :created_at, :updated_at
json.url student_url(student, format: :json)
