class Course < ApplicationRecord
  has_many :location_courses
  has_many :locations, through: :location_courses
  has_many :course_disciplines
  has_many :disciplines
end
