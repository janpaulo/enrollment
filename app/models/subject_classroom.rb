class SubjectClassroom < ApplicationRecord
  belongs_to :classroom
  belongs_to :subject
end
