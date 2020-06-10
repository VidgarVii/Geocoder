describe Geocoder do
  describe '.geocode' do
    subject { described_class.geocode(city) }

    context 'when existing city' do
      let(:city) { 'City 17' }

      it 'returns coordinates' do
        is_expected.to eq([45.05, 90.05])
      end
    end

    context 'when missing city' do
      let(:city) { 'Missing' }

      it 'returns a nil value' do
        is_expected.to eq []
      end
    end
  end
end
