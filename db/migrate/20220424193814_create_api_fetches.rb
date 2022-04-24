# frozen_string_literal: true

class CreateApiFetches < ActiveRecord::Migration[7.0]
  def change
    create_table :api_fetches, &:timestamps
  end
end
