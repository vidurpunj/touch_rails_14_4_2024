class BlogsController < ApplicationController

  def index

  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new
    @blog.title = params[:title]
    @blog.body = params[:body]
    if @blog.save
      flash[:notice] = "Blog saved."
    else
      flash[:alert] = "Blog not saved."
    end
    render json: { message: flash[:notice], code: 200}
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end
  def update
    @blog = Blog.find(params[:id])
    @blog.title = params[:title]
    @blog.body = params[:body]
    if @blog.save
      flash[:notice] = "Blog saved."
    else
      flash[:alert] = "Blog not saved."
    end
    render json: { message: flash[:notice], code: 200}
  end
  
  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
