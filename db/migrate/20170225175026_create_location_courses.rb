class CreateLocationCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :location_courses do |t|
      t.integer :location_id
      t.integer :course_id

      t.timestamps
    end
  end
end
