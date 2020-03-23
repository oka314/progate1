class PostsController < ApplicationController
  def index
   @posts = Post.order(created_at: :asc)
  end

  def show
   @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post =Post.new(content:params[:content])
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

end
