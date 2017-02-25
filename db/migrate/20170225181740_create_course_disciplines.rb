class CreateCourseDisciplines < ActiveRecord::Migration[5.0]
  def change
    create_table :course_disciplines do |t|
      t.integer :course_id
      t.integer :discipline_id
      t.integer :location_id
      t.string :ap1_local
      t.datetime :ap1_date
      t.string :ap2_local
      t.datetime :ap2_date
      t.string :ap3_local
      t.datetime :ap3_date
      t.date :ad1_deadline
      t.date :ad2_deadline
      t.string :presencial_tutor
      t.string :tutorship_weekday
      t.string :tutorship_time
      t.string :tutorship_room

      t.timestamps
    end
  end
end
