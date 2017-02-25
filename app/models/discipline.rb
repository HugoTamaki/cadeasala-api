class Discipline < ApplicationRecord
  belongs_to :course
  has_many :course_disciplines
end
