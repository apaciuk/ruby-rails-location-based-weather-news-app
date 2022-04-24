# frozen_string_literal: true
require 'faraday'
require 'json'
require 'faraday_middleware'
HEADERS = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'x-rapidapi-host': @host,
  'x-rapidapi-key': ENV['RAPID_API_KEY']
}.freeze
class PagesController < ApplicationController
  def fetch_data(url, host, headers)
    @url = url
    @host = host
    @headers = headers || HEADERS
    if !@url.nil? && !@host.nil?
      @response = Faraday.get(@url, headers: @headers)
      @response_body = JSON.parse(@response.body)
    else
      Errno::ENOENT => 'Error: URL or Host not found'
      @response_body = 'Please enter a valid URL'
    end
  end
end
