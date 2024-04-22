class BlogsController < ApplicationController

  def index

  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    byebug
    if @blog.save
      flash[:notice] = "Blog saved."
    else
      flash[:alert] = "Blog not saved."
    end
    redirect_back fallback_location: blog_path(@blog)
  end

  def show
    @blog = Blog.find(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
