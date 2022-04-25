# frozen_string_literal: true

require 'faraday'
require 'json'
HEADERS = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'x-rapidapi-host': @host,
  'x-rapidapi-key': ENV['RAPID_API_KEY']
}.freeze
class ApplicationController < ActionController::Base
  def fetch_data(url, host, headers)
    @url = url || 'https://ip-geo-location.p.rapidapi.com/ip/check'
    @host = host || 'ip-geo-location.p.rapidapi.com'
    @headers = headers || HEADERS
    if !@url.nil? && !@host.nil?
      @response = Faraday.get(@url, headers: @headers) + @response_body = JSON.parse(@response.body)
    else
      Errno::ENOENT => 'Error: URL or Host not found'
      @response_body = 'Please enter a valid URL'
    end
    render json: @response_body
    end
end

