require 'rails_helper'

RSpec.describe 'Coordinates API', type: :request do

  describe 'GET /coordinates/:address' do
    context 'for valid address' do
      let(:address) { :valid_address }

      before { get "/coordinates/#{:address}" }

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
