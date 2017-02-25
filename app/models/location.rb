class Location < ApplicationRecord
  has_many :location_courses
  has_many :courses, through: :location_courses
  has_many :course_disciplines
end
