module API
  module V1
    class Autocomplete < Grape::API
      version 'v1', using: :path, vendor: 'autocompleter'

      resources :autocomplete do

        desc 'Return dictionary words matching search letters'
        params do
          requires :letters, type: String
        end

        get 'search/:letters' do
          matches = Models::Dictionary.new.search(params[:letters])
          JSONAPI::Serializer.serialize(matches, is_collection: true, meta: META_DATA)
        end

      end
    end
  end
end
