class StudentSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :fname, :lname, :mobile, :course, :sem_no, :year, :birthday, :address, :birth_place
end
