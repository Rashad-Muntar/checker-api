class Api::CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories
    end

    def create
        category = Category.create(category_params)
        if category
            render json: {statues: 'created', category: :category, message: 'Category successfully created'}
        else
            render json: {message: 'Ooops category was not able to create'}
        end
    end

    def show
        @category = Category.find_by(id: params[:id])
        if @category
        render json: CategorySerializer.new(@category, options).serialized_json
        else
            render json: {message: 'Ooops category was not found'}
        end
    end

    def update
        category = User.cateories.update()
    end

    private
    def category_params
        params.permit(categories: [:title, :hour, :minute, :user_id]).require(:categories)
    end

    def options
        @options ||= {include: %i[activities] }
      end

end
