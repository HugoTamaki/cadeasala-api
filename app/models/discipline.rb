class Discipline < ApplicationRecord
  belongs_to :course
  has_many :course_disciplines
  before_create :slugify

  private

  def slugify
    self.slug = self.name.parameterize
  end
end
