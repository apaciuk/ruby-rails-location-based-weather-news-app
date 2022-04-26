module ApiFertch
  class << self
    def fetch_data(url)
      response = HTTParty.get(url)
      response.parsed_response
    end
  end
end