# frozen_string_literal: true
require 'uri'
require 'net/http'
require 'openssl'
require 'json'
class QueryCreator < ApplicationService
  def initialize(params)
    super()
    @params = params
  end

  def call
    @params.each do |key, value|
      @params[key] = value.join(',') if value.is_a?(Array)
    end
    @params
  end

  def loc_client
    url = URI('https://ip-geo-location.p.rapidapi.com/ip/check?format=json')
    loc_client = QueryCreator::Net::HTTP.new(url.host, url.port)
    loc_client.use_ssl = true
    loc_client.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = QueryCreator::Net::HTTP::Get.new(url)
    request['X-RapidAPI-Host'] = 'ip-geo-location.p.rapidapi.com'
    request['X-RapidAPI-Key'] = ENV['RAPID_API_KEY']
    response = loc_client.request(request)
    output = JSON.parse(response.read_body, symbolize_names: true)
    #  @location = output[:area][:name]
    render json: output
  end
end
