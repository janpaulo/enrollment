class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.string :room_one
      t.string :room_two
      t.string :room_three
      t.string :room_four

      t.timestamps
    end
  end
end
