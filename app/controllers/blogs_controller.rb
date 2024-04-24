class BlogsController < ApplicationController

  def index
    # @blogs = Blog.all
      @blog1 = Blog.find(25)
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
      render json: { message: flash[:notice], code: 200}
    else
      flash[:alert] = "Blog not saved."
      render json: { errors: @record.errors.full_messages }, status: :unprocessable_entity
    end
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
      render json: { message: flash[:notice], code: 200}
    else
      flash[:alert] = "Blog not saved."
      render json: { errors: @record.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
