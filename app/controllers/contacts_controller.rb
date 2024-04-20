class ContactsController < ApplicationController
  def index
    @get_in_touch = GetInTouch.new
  end

  def create
    @gate_in_touch = GetInTouch.new(get_in_touch_params)
    if @gate_in_touch.save
      flash[:notice] = "you request saved we will get back to you."
    else
      flash[:alert] = "your request not saved."
    end
    redirect_back fallback_location: contacts_path
  end

  private

  def get_in_touch_params
    params.require(:get_in_touch).permit(:name, :email, :subject, :comments)
  end
end
