class Api::CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories
  end

  def create
    category = Category.create(category_params)
    if category
      render json: { status: 'created', category: :category, message: 'Category was successfully created' }
    else
      render json: { error: 'Ooops category was not able to create' }, status: :internal_server_error
    end
  end

  def show
    @category = Category.find_by(id: params[:id])
    if @category
      render json: CategorySerializer.new(@category, options).serialized_json
    else
      render json: { error: 'Ooops category was not found' }, statues: :internal_server_error
    end
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_update_params)
    if @category
      render json: { category: @category, statues: 'category updated' }
    else
      render json: @category.errors, statues: :internal_server_error
    end
  end

  private

  def category_params
    params.permit(categories: %i[title user_id]).require(:categories)
  end

  def category_update_params
    params.require(:category).permit(:hour, :minute)
  end

  def options
    @options ||= { include: [:activities] }
  end
end
