class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.integer :student_id
      t.string :fname
      t.string :lname
      t.string :mobile
      t.string :course
      t.string :sem_no
      t.string :year
      t.string :birthday
      t.text :address
      t.string :birth_place

      t.timestamps
    end
  end
end
