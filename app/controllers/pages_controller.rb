# frozen_string_literal: true

class PagesController < ApplicationController
  def fetch_data
    @data = {
      'title' => 'Fetch Data',
      'description' => 'Fetch data from the database',
      'data' => {
        'users' => User.all,
        'posts' => Post.all,
        'comments' => Comment.all
      }
    }
  end
end
