require 'rails_helper'

describe CourseDiscipline do
  let(:discipline) { build(:discipline) }
  let(:course_discipline) { build(:course_discipline, discipline: discipline) }

  describe 'relationships' do
    it { expect(course_discipline).to respond_to(:course) }
    it { expect(course_discipline).to respond_to(:discipline) }
    it { expect(course_discipline).to respond_to(:location) }
  end

  describe 'methods' do
    describe '#discipline_name' do
      it 'responds with course_discipline discipline name' do
        expect(course_discipline.discipline_name).to eql(discipline.name)
      end
    end
  end
end
