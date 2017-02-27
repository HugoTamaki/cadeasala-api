require 'rails_helper'

describe Api::V1::Admin::LocationsController do
  let!(:location) { create(:location) }

  describe '#index' do
    before(:each) do
      allow(JWT).to receive(:decode).and_return(['value'])
      allow(JWT).to receive(:encode).and_return(true)
    end

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
