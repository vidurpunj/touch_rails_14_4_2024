class FaqController < ApplicationController
  def index
  end
  
  def new
    @faq = Faq.new
  end
  
  def create
    byebug
  end
  
  
end
