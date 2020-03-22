class PostsController < ApplicationController
  def index
   @posts = Post.order(created_at: :asc)
  end

  def show
   @post = Post.find_by(id: params[:id])
  end

  def new
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post =Post.new(content:params[:content])
    @post.save
    redirect_to posts_path
  end

  def update
    redirect_to posts_path
  end

  def destroy
  end

end
