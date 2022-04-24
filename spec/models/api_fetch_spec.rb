# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApiFetch, type: :model do
  let(:api_fetch) { ApiFetch.new }
  describe '#fetch_data' do
    it 'returns a hash' do
      expect(api_fetch.fetch_data).to be_a(Hash)
    end
  end
end
