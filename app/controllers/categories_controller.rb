class CategoriesController < ApplicationController
  def index
    @categories = Category.paginate page: params[:page], per_page: 5
  end

  def show
    @category = Category.find_by_id params[:id]
    @books = @category.books
    @categories = Category.all
  end

end