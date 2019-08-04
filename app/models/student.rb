
class Student < ApplicationRecord

	validates :fname,:mname,:lname, presence: true
	# validates :lname, uniqueness: true
	# validates_uniqueness_of :lname, scope: :student_id
	# validates :lname, uniqueness: { scope: :birthday,
 	# message: "should not continue in same" }


	has_many :student_subjects, dependent: :destroy
	has_many :subjects, through: :student_subjects
	has_many :teachers, through: :subjects
	has_many :classrooms, through: :subjects
	has_one_attached :avatar

	# has_many :subjects
	# has_many :teachers, through: :subjects

	def full_name
    	"#{fname.camelize} #{mname.camelize} #{lname.camelize}"
  	end

end

	