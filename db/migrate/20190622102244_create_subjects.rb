class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.string :sbject_description
      t.string :time
      t.string :day
      t.string :course
      t.integer :school_year
      t.string :year_lvl
      t.string :section

      t.timestamps
    end
  end
end
