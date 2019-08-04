class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :subject_name, :sbject_description, :time, :day, :course, :school_year, :year_lvl, :section
end
