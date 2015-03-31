class BrandsController < ApplicationController
  def index
    @brands = Brand.paginate page: params[:page], per_page: 10
  end
  
  def create
  end

  def show
    @brand = Brand.find params[:id]
  end
end
