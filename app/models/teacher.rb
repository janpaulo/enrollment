class Teacher < ApplicationRecord


validates_presence_of :fname,:mname, :lname

has_many :subject_teachers, dependent: :destroy
has_many :subjects, through: :subject_teachers
has_many :students, through: :subjects
has_many :classrooms, through: :subjects
has_one_attached :avatar

def teacher_name
    "#{fname.capitalize} #{mname.capitalize} #{lname.capitalize}"
  	end
end
