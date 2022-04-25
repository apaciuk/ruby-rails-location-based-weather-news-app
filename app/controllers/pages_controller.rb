# frozen_string_literal: true
require 'faraday'
require 'json'
HEADERS = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'x-rapidapi-host': @host,
  'x-rapidapi-key': ENV['RAPID_API_KEY']
}.freeze
class PagesController < ApplicationController

  #let(:api_fetch) { ApplicationController.new }
  #let({ url: 'https://api.github.com/users/octocat/repos' }) { api_fetch.url }
  #let({ host: 'api.github.com' }) { api_fetch.host }
  #let({ headers: { 'User-Agent' => 'Octokit Ruby Gem 4.0.0' } }) { api_fetch.HEADERS }
  # let(:fetch_data) { api_fetch.fetch_data(url, host, headers) }
  # describe '#fetch_data' do
  # it('makes a valid connection') { expect(api_fetch.fetch_data(url, host, headers)).to be_truthy }
  # end
end
