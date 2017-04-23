require 'rails_helper'

describe Api::V1::Admin::DisciplinesController do
  let(:course) { create(:course) }
  let(:discipline) { create(:discipline, course: course) }

  describe 'GET #show' do
    before(:each) do
      allow(JWT).to receive(:decode).and_return(['value'])
      allow(JWT).to receive(:encode).and_return(true)
    end

    it 'responds with 200' do
      get :show, params: { id: discipline.id }

      expect(response.status).to eql(200)
    end

    it 'responds with disipline' do
      get :show, params: { id: discipline.id }

      expect(response.body).to eql({
        discipline:
          {
            id: discipline.id,
            name: discipline.name
          }
        }.to_json)
    end
  end

  describe 'PUT #update' do
    before(:each) do
      allow(JWT).to receive(:decode).and_return(['value'])
      allow(JWT).to receive(:encode).and_return(true)
    end

    context 'success' do
      it 'responds with 200' do
        put :update, params: { id: discipline.id, discipline: { name: 'Test' } }

        expect(response.status).to eql(200)
      end

      it 'responds with discipline' do
        put :update, params: { id: discipline.id, discipline: { name: 'Test' } }

        expect(response.body).to eql({
          discipline:
            {
              id: discipline.id,
              name: 'Test'
            }
          }.to_json)
      end
    end
  end
end
