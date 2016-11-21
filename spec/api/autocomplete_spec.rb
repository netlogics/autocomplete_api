describe API::V1::Autocomplete do
  include Rack::Test::Methods

  def app
    API::V1::Autocomplete
  end

  context 'GET /api/v1/autocomplete/search' do
    context 'matches found' do
      it 'returns an array of words that start with food' do
        get '/api/v1/autocomplete/search/food'
        expect(last_response.status).to eq(200)
        expect(json).to eq JSON.parse(search_result)
      end
    end

    context 'no matches found' do
      it 'returns empty data' do
        get '/api/v1/autocomplete/search/iixxysyzzz'
        expect(last_response.status).to eq(200)
        expect(json).to eq JSON.parse(empty_result)
      end
    end
  end
end
