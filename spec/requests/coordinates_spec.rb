require 'rails_helper'

RSpec.describe 'Coordinates API', type: :request do

  describe 'GET /coordinates/:address' do

    context 'for valid address' do
      let(:address) { 'checkpoint charlie' }

      before do
        get "/coordinates/#{URI.escape(address)}"
        sleep(0.5) #since no API key is used in demo, sleep is used to ensure the request limit is not reached
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns json' do
        expect(json).not_to be_empty
        expect(json.size).to eq(2)
      end
    end

    context 'for invalid address' do
      let(:address) { SecureRandom.hex(20) }

      before do
        get "/coordinates/#{address}"
        sleep(0.5)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns json' do
        expect(json).to be_nil
      end
    end
  end
end
