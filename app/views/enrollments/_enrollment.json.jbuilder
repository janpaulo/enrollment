json.extract! enrollment, :id, :student_id, :fname, :lname, :mobile, :course, :sem_no, :year, :birthday, :address, :birth_place, :created_at, :updated_at
json.url enrollment_url(enrollment, format: :json)
