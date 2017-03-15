require 'rails_helper'

describe Api::V1::CoursesController do
  let(:course) { create(:course) }
  let(:location) { create(:location, courses: [course]) }

  describe 'GET #index' do
    it 'responds with 200' do
      get :index, params: { location_id: location.id }

      expect(response.status).to eql(200)
    end

    it 'responds with courses' do
      get :index, params: { location_id: location.id }

      expect(response.body).to eql({
        courses: [
          {
            id: course.id,
            name: course.name
          }
        ]
      }.to_json)
    end
  end
end
