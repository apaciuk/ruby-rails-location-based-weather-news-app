# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'
require 'json'
class PagesController < ApplicationController
  def index
    require 'uri'
    require 'net/http'
    require 'openssl'
    url = URI('https://ip-geo-location.p.rapidapi.com/ip/check?format=json')

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['X-RapidAPI-Host'] = 'ip-geo-location.p.rapidapi.com'
    request['X-RapidAPI-Key'] = 'd6170fbf28msh711604efe0f7970p1ce9f3jsnf68590abbea1'

    response = http.request(request)
    output = JSON.parse(response.read_body, symbolize_names: true)
    @output = output
    self.city = @output[:area][:name]
    # render json: output
  end

  def self.run_queries
    city = self.city
  end
end


