class TagsController < ApplicationController

  def index
    @tag= Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new tag_params
    if @tag.save
      flash[:success] = "Tag created!"
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    @tag = tag
  end

  def edit
    @tag = tag
  end

  def update
    tag.update tag_params
    if tag.save
      flash[:success] = "Tag updated!"
      redirect_to tags_path(tag.id)
    else
      render :edit
    end
  end

  def destroy
    tag.destroy
    redirect_to posts_path
  end

  private
  def tag
    @tag ||= Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end

end