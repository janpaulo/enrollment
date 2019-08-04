class CreateSubjectClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_classrooms do |t|
      t.references :classroom, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
