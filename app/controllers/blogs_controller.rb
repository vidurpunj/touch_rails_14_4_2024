class BlogsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create edit update]
  def index
    # @blogs = Blog.all
      @blog1 = Blog.find(25)
      @blog2 = Blog.find(36)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new
    @blog.title = params[:title]
    @blog.body = params[:body]
    @blog.blog_image = params[:blog_image]
    if @blog.save
      flash.now[:notice] = "Blog saved."
      render json: { message: flash[:notice], code: 200}
    else
      flash.now[:alert] = "Blog not saved."
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
    @blog.blog_image = params[:blog_image]
    if @blog.save
      flash[:notice] = "Blog Updated."
      render json: { message: flash[:notice], code: 200}
    else
      flash[:alert] = "Blog not saved."
      render json: { errors: @record.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  private

  def blog_params
    params.require(:blog).permit(:title, :body, :blog_image)
  end
end
