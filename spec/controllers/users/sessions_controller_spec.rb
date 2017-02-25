require 'rails_helper'

describe Users::SessionsController do
  let!(:user) { create(:user) }

  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
  end

  describe 'POST #create' do
    context 'user exists' do
      it 'sends user and token' do
        post :create, params: { user: {
            email: 'johndoe@email.com',
            password: 'teste123'
          }
        }

        expected_reponse = {
          id: user.id,
          email: user.email
        }

        expect(response.body).to eql(expected_reponse.to_json)
      end
    end

    context 'user doesnt exist' do
      it 'returns 404 response' do
        post :create, params: { user: {
            email: 'janedoe@email.com',
            password: 'teste123'
          }
        }

        expected_response = {
          error: 'email or password is wrong'
        }

        expect(response.body).to eql(expected_response.to_json)
        expect(response.status).to eql(404)
      end
    end
  end
end