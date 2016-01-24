class PostsController < ApplicationController
  def index
    @posts = Post.all
    @tags = Tag.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      flash[:success] = "Post Added!"
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @post = post
  end

  def edit
    @post = post
  end

  def update
    post.update_attributes post_params
    if post.save
      flash[:success] = "Post updated!"
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    post.destroy
    redirect_to posts_path
  end

  private
  def post
    @post ||= Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :author, tag_ids: [])
  end
end




