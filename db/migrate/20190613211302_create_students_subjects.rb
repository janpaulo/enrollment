class CreateStudentsSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :students_subjects do |t|
      t.references :student, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
