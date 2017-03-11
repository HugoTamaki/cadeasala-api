require 'rails_helper'

describe Course do
  let(:course) { build(:course) }
  describe 'relationships' do
    it { expect(course).to respond_to(:location_courses) }
    it { expect(course).to respond_to(:locations) }
    it { expect(course).to respond_to(:course_disciplines) }
    it { expect(course).to respond_to(:disciplines) }
  end
end
