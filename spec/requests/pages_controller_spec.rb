# frozen_string_literal: true

require 'faraday'
require 'faraday/net_http'
Faraday.default_adapter = :net_http
require 'json'
require 'rspec'
RSpec.describe 'ApplicationController', type: :request do
  @url = 'https://ip-geo-location.p.rapidapi.com/ip/check'
  @headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'X-RapidAPI-Host': 'ip-geo-location.p.rapidapi.com',
    'X-RapidAPI-Key': 'd6170fbf28msh711604efe0f7970p1ce9f3jsnf68590abbea1'
  }
  describe '#fetch_data' do
    it 'returns a valid response' do
      response = Faraday.get(@url, @headers)
      expect(response.status).to eq(200)
    end
  end
end
