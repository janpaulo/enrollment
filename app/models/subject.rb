class Subject < ApplicationRecord


# validates_presence_of   :course,:year_lvl,:section,:object_id
# Validates :
validates :day,:sbject_description,:subject_name, presence: true
# validates_presence_of   :subject_name, :sbject_description, :time, :day
 # belongs_to :user
 validates :subject_name, uniqueness: { scope: %i(sbject_description time day),
    message: "should not continue in Same Description, time and day" }
    # validates :subject_name, uniqueness: { scope: :time,
    # message: "should not continue in same time" }
  
#validates :subject_name, scope: :section,scope: :time
has_many :student_subjects, dependent: :destroy
has_many :students, through: :student_subjects
has_many :subject_teachers, dependent: :destroy
has_many :teachers, through: :subject_teachers
has_many :subject_classrooms, dependent: :destroy
has_many :classrooms, through: :subject_classrooms

	def all_subject
    "#{subject_name} #{sbject_description} #{time} #{day} #{section}"
    #{}"#{subject_name.camelize} #{sbject_description.camelize} #{time} #{day}"
  	end

end
