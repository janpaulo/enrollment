class SubjectClassroomSerializer < ActiveModel::Serializer
  attributes :id
  has_one :classroom
  has_one :subject
end
