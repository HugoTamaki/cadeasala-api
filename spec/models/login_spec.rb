require 'rails_helper'

describe Login do
  let(:token) { {id: 'some id here'} }

  describe '.validate_token' do
    context 'success' do
      before do
        allow(JWT).to receive(:decode).and_return(true)
      end

      it 'returns true when token is valid' do
        expect(Login.validate_token(token)).to eql(true)
      end
    end

    context 'failure' do
      before do
        allow(JWT).to receive(:decode).and_raise(JWT::ExpiredSignature)
      end

      it 'returns nil when token is not valid' do
        expect(Login.validate_token(token)).to eql(nil)
      end
    end
  end

  describe '.generate_token' do
    before do
      allow(JWT).to receive(:encode).and_return('SOME TOKEN')
    end

    it 'calls JWT encode to generate token' do
      expect(JWT).to receive(:encode)
      Login.generate_token(token)
    end
  end
end
