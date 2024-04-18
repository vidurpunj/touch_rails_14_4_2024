class ContactsController < ApplicationController
  def index
    @get_in_touch = GetInTouch.new
  end

  def create
    redirect_back fallback_location: contacts_path
  end
end
