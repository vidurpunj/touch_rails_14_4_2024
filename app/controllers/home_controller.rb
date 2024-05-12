class HomeController < ApplicationController
  def index
    @blogs = Blog.order(updated_at: :desc).limit(3)
  end
end
