# frozen_string_literal: true
require 'faraday'
require 'json'
HEADERS = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'x-rapidapi-host': @host,
  'x-rapidapi-key': ENV['RAPID_API_KEY']
}.freeze
RSpec.describe 'ApplicationController', type: :request do
  @url = 'https://ip-geo-location.p.rapidapi.com/ip/check'
  @host = 'ip-geo-location.p.rapidapi.com'
  @headers = HEADERS
  describe '#fetch_data' do
    it 'returns a valid response' do
      response = Faraday.get(@url, headers: @headers)
      expect(response.status).to eq(200)
    end
  end
end


