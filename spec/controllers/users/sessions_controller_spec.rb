require 'rails_helper'

describe Users::SessionsController do
  let!(:user) { create(:user) }

  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
  end

  describe 'POST #create' do
    context 'user exists' do
      it 'sends user' do
        post :create, params: { user: {
            email: 'johndoe@email.com',
            password: 'teste123'
          }
        }

        expected_reponse = {
          user: {
            id: user.id,
            email: user.email
          }
        }

        expect(response.body).to eql(expected_reponse.to_json)
      end

      it 'responds with 200' do
        post :create, params: { user: {
            email: 'johndoe@email.com',
            password: 'teste123'
          }
        }

        expect(response.status).to eql(200)
      end

      it 'respond with token' do
        post :create, params: { user: {
            email: 'johndoe@email.com',
            password: 'teste123'
          }
        }

        expect(response.headers['XSRF-TOKEN']).not_to be_nil        
      end
    end

    context 'user doesnt exist' do
      it 'returns 404 response' do
        post :create, params: { user: {
            email: 'janedoe@email.com',
            password: 'teste123'
          }
        }

        expect(response.status).to eql(404)
      end

      it 'respond with error message' do
        post :create, params: { user: {
            email: 'janedoe@email.com',
            password: 'teste123'
          }
        }

        expected_response = {
          error: 'email or password is wrong'
        }

        expect(response.body).to eql(expected_response.to_json)
      end
    end
  end
end