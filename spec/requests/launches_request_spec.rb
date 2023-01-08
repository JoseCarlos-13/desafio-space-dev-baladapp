require 'rails_helper'

RSpec.describe 'Launches', type: :request do
  describe 'GET#index' do
    context 'when the launches are listed' do
      let!(:launch_list) { create_list(:launch, 3) }

      before do
        launch_list
        
        get '/launches'
      end

      it 'must return 200 status code' do
        expect(response).to have_http_status(:ok)
      end

      it 'must return the launche attributes of first element' do
        expect(json_body[0]).to include(:url, :slug, :name, :status, :net,
                                        :window_end, :window_start, :inhold,
                                        :tbdtime, :tbddate, :probability,
                                        :holdreason, :failreason, :hashtag,
                                        :mission, :webcast_live, :infographic,
                                        :program)
      end
    end
  end

  describe 'PUT#update' do
    context 'when a launch is updated' do
      let!(:launch) { create(:launch) }
      let!(:launch_params) { attributes_for(:launch, url: 'asd', slug:'asd',
                                           name:'asd', status:'asd', net: DateTime.now,
                                           window_end: DateTime.now, window_start: DateTime.now, inhold: false,
                                           tbdtime: false, tbddate: false, probability: 0,
                                           holdreason: 'asd', failreason: 'asd', hashtag: 'asd',
                                           mission: nil, webcast_live: '', infographic: '',
                                           program: []) }

      before do

        put "/launches/#{launch.id}", params: { launch: launch_params }
      end

      it 'must return 204 status code' do
        expect(response).to have_http_status(:no_content)
      end
    end
  end

  describe 'DELETE#destroy' do
    context 'when a launch is destroyed' do
      let!(:launch) { create(:launch) }

      before do

        delete "/launches/#{launch.id}"
      end

      it 'must return 204 status code' do
        expect(response).to have_http_status(:no_content)
      end

      it 'must return the launches count' do
        expect(Launch.count).to eq(0)
      end
    end
  end

  describe 'GET#show' do
    context 'when a launch is selected' do
      let!(:launch) { create(:launch) }

      before do
        get "/launches/#{launch.id}"
      end

      it 'must return 200 status code' do
        expect(response).to have_http_status(:ok)
      end

      it 'must return the launche attributes' do
        expect(json_body).to include(:url, :slug, :name, :status, :net,
                                        :window_end, :window_start, :inhold,
                                        :tbdtime, :tbddate, :probability,
                                        :holdreason, :failreason, :hashtag,
                                        :mission, :webcast_live, :infographic,
                                        :program)
      end
    end
  end
end
