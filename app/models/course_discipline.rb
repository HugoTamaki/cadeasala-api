class CourseDiscipline < ApplicationRecord
  belongs_to :course
  belongs_to :discipline
  belongs_to :location

  def discipline_name
    self.discipline.name
  end
end
