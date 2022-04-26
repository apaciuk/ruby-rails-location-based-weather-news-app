# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'
require 'json'
class PagesController < ApplicationController
  #def self.index
  #  url = URI('https://ip-geo-location.p.rapidapi.com/ip/check?format=json')
  # http = Net::HTTP.new(url.host, url.port)
  # http.use_ssl = true
  #  http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  # request = Net::HTTP::Get.new(url)
  #  request['X-RapidAPI-Host'] = 'ip-geo-location.p.rapidapi.com'
  # request['X-RapidAPI-Key'] = 'd6170fbf28msh711604efe0f7970p1ce9f3jsnf68590abbea1'
  # response = http.request(request)
  #  output = JSON.parse(response.read_body, symbolize_names: true)
  #  @location = output[:area][:name]
  # end

  def index
    # city = index.output[[:area][:name]]#{city}
    url = URI('https://community-open-weather-map.p.rapidapi.com/weather?units=imperial&q=Rotherham')
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    request['X-RapidAPI-Host'] = 'community-open-weather-map.p.rapidapi.com'
    request['X-RapidAPI-Key'] = 'd6170fbf28msh711604efe0f7970p1ce9f3jsnf68590abbea1'
    response = http.request(request)
    output = JSON.parse(response.read_body, symbolize_names: true)
    # @output = output
    @weather = output[:weather][0][:description]
    @icon = output[:weather][0][:icon]


    # render json: @output
  end
end


