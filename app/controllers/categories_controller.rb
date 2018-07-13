class CategoriesController < ApplicationController
  before_action :set_category, only: [ :show, :edit, :update, :destroy]

  def show
    @phones = Phone.where(category_id: [@category.subtree_ids]).paginate(page: params[:page], per_page: 5)
  end

  private

  def set_category
    @category=Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :parent_id)
  end
end
