class V1::CategoriesController < ApplicationController
  before_action :find_catrgory_details, only: %i[show products]

  def index
    @categories = Category.all
  end

  def show; end

  def products; end

  private

  def find_catrgory_details
    @category = Category.includes(:products, :children).where(
      'lower(name) = ?',
      category_params[:name].downcase
    )
  end

  def category_params
    params.permit(:name)
  end
end
