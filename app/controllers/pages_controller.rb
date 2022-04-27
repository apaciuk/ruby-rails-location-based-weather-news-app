# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'
require 'json'
class PagesController < ApplicationController
  def index
    service = QueryCreator.run(index)
    # service = User::SendNotification.run(user: User.first, provider: Provider.first)
    if service.success?
      render json: 'success'
    else
      render json: 'fail'
    end
  end

  # def index_old
  # url = URI('https://latest-breaking-news-live.p.rapidapi.com/latest-breaking-news')
  #  http = Net::HTTP.new(url.host, url.port)
  #  http.use_ssl = true
  #  http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  #  request = Net::HTTP::Get.new(url)
  #  request['X-RapidAPI-Host'] = 'latest-breaking-news-live.p.rapidapi.com'
  # request['X-RapidAPI-Key'] = ENV['RAPID_API_KEY'] # 'd6170fbf28msh711604efe0f7970p1ce9f3jsnf68590abbea1'
  # response = http.request(request)
  #  output = JSON.parse(response.read_body, symbolize_names: true)
  # @news = output
  #  render json: output
  # end

  # def get_location
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

  # def get_weather
  # location = index.output[:area][:name]
  # city = index.output[[:area][:name]]#{city}
  #  url = URI('https://community-open-weather-map.p.rapidapi.com/weather?units=imperial&q=Rotherham')
  #  http = Net::HTTP.new(url.host, url.port)
  # http.use_ssl = true
  # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  # request = Net::HTTP::Get.new(url)
  # request['X-RapidAPI-Host'] = 'community-open-weather-map.p.rapidapi.com'
  # request['X-RapidAPI-Key'] = 'd6170fbf28msh711604efe0f7970p1ce9f3jsnf68590abbea1'
  #  response = http.request(request)
  # output = JSON.parse(response.read_body, symbolize_names: true)
  # @output = output
  #  @weather = output[:weather][0][:description]
  # @icon = output[:weather][0][:icon]
  # render json: @output
  # end
end
