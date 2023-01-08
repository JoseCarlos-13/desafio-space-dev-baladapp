require 'rails_helper'

RSpec.describe ImportLaunchesResponseService, type: :service do
  describe '#call' do
    it 'must return the space devs index launchs', :vcr do
      response = VCR.use_cassette("launch_api") do
        ImportLaunchesResponseService.new(1).call
      end
      binding.pry

      expect(response["results"]).to eq(100)
    end
  end
end