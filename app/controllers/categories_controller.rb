class CategoriesController < ApplicationController
  def index
    @categories = Category.order("created_at DESC")
  end

  def new
    @categories = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
    else
      render :new, statues: :unprocessable_entity
    end
  end

  private

  def category_params
    params.require(:category).permit(:title,:text,:genre_id)
  end
  





end
