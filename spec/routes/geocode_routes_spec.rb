# frozen_string_literal: true

describe GeocodeRoutes, type: :routes do
  describe 'POST /v1/geocode' do
    context 'valid params' do
      before do
        post '/', { city: 'Чебоксары' }.to_json
      end

      it { expect(last_response).to be_ok }
      it { expect(response_body).to be_has_key('coordinates') }
    end

    context 'invalid params' do
      before { post '/', { city: 'Златоземье' }.to_json }

      it { expect(last_response.status).to eq 404 }
      it { expect(response_body).to be_has_key('errors') }
    end
  end
end
