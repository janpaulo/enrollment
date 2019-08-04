class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.string :fname
      t.string :lname
      t.string :mname
      t.string :mobile
      t.string :birthday
      t.string :address
      t.string :birth_place
      t.string :gender
      t.string :mother_name
      t.string :fathe_name
      t.string :gaurdian_name
      t.string :mother_occupation
      t.string :father_occupation
      t.integer :gaurdian_num

      t.timestamps
    end
  end
end
