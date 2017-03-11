require 'rails_helper'

describe Location do
  let(:location) { build(:location) }

  describe 'relationships' do
    it { expect(location).to respond_to(:location_courses) }
    it { expect(location).to respond_to(:courses) }
    it { expect(location).to respond_to(:course_disciplines) }
  end
end
