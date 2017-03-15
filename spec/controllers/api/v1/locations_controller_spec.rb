require 'rails_helper'

describe Api::V1::LocationsController do
  let!(:location) { create(:location) }

  describe 'GET #index' do
    it 'responds with 200' do
      get :index

      expect(response.status).to eql(200)
    end

    it 'responds with locations' do
      get :index

      expect(response.body).to eql({
        locations: [
          {
            id: location.id,
            name: location.name
          }
        ]
      }.to_json)
    end
  end
end
