require 'rails_helper'

describe Discipline do
  let(:course) { build(:course) }
  let(:discipline) { build(:discipline, course: course) }

  describe 'relationships' do
    it { expect(discipline).to respond_to(:course) }
    it { expect(discipline).to respond_to(:course_disciplines) }
  end

  describe 'callbacks' do
    describe '#slugify' do
      it 'sets slug to discipline' do
        discipline.save
        expect(discipline.slug).not_to be_nil
      end
    end
  end
end
