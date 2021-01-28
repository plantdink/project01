class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create post_params
    redirect_to post
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.update post_params
    redirect_to post
  end

  def show
    @post = Post.find params[:id]
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to posts_path
  end

# This will limit the inputs taken from the user to the following:
  private
  def post_params
    params.require(:post).permit(:title, :example, :content)
  end
end
