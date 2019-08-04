class Classroom < ApplicationRecord
	has_many :subject_classrooms, dependent: :destroy
	has_many :subjects, through: :subject_classrooms


	validates :room_one, presence: true 
end
