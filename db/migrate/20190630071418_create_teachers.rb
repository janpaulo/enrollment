class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :fname
      t.string :mname
      t.string :lname

      t.timestamps
    end
  end
end
