# frozen_string_literal: true

class ApiFetch < ApplicationRecord
  def fetch_data
    @fetch_data = JSON.parse(ApiFetch.fetch_data)
  end
end
