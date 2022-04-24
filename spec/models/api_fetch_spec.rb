# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApiFetch, type: :model do
  let(:api_fetch) { ApiFetch.new }
  let(:fetch_data) { api_fetch.fetch_data }
  describe '#fetch_data' do
    it 'makes a valid connection' do
      expect(api_fetch.fetch_data).to be_truthy
    end
  end
end
