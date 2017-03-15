require 'rails_helper'

describe Api::V1::CourseDisciplinesController do
  let(:course) { create(:course) }
  let(:location) { create(:location, courses: [course]) }
  let(:discipline) { create(:discipline, course: course) }
  let!(:course_discipline) { create(:course_discipline, course: course, discipline: discipline, location: location) }
  let(:course_discipline_attributes) {
    {
      id: course_discipline.id,
      discipline_name: discipline.name,
      ap1_local: course_discipline.ap1_local,
      ap1_date: course_discipline.ap1_date,
      ap2_local: course_discipline.ap2_local,
      ap2_date: course_discipline.ap2_date,
      ap3_local: course_discipline.ap3_local,
      ap3_date: course_discipline.ap3_date,
      ad1_deadline: course_discipline.ad1_deadline,
      ad2_deadline: course_discipline.ad2_deadline,
      presencial_tutor: course_discipline.presencial_tutor,
      tutorship_weekday: course_discipline.tutorship_weekday,
      tutorship_time: course_discipline.tutorship_time,
      tutorship_room: course_discipline.tutorship_room
    }
  }

  describe 'GET #index' do
    it 'responds with 200' do
      get :index, params: { location_id: location.id, course_id: course.id }

      expect(response.status).to eql(200)
    end

    it 'responds with course_disciplines' do
      get :index, params: { location_id: location.id, course_id: course.id }

      expect(response.body).to eql({
        course_disciplines: [
          course_discipline_attributes
        ]
      }.to_json)
    end
  end
end
