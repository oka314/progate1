class PostsController < ApplicationController
  def index
   @posts = Post.all
  end

  def show
   @post = Post.find_by(id: params[:id])
  end

  def new
  end
  
  def edit
  end

  def create
    redirect_to posts_path
  end

  def update
  end

  def destroy
  end

end
