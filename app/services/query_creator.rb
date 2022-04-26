# frozen_string_literal: true

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
end
