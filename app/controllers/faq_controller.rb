class FaqController < ApplicationController
  def index
    @faq = Faq.all
  end
  
  def new
    @faq = Faq.new
  end
  
  def create
    @faq = Faq.new(faq_params)
    if @faq.save
      flash[:message] = "Faq successfully created!"
      redirect_to new_faq_path
    else
      flash[:error] = "Faq not created!"
      render :action => "new"
    end
  end
  
  private
  
  def faq_params
    params.require(:faq).permit(:query, :answer)
  end
  
end
