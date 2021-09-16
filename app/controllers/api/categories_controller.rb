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

    # def update
    #     @category = Category.update(category_update_params)
    #     head :no_content
    # end

    # def update
    #     @category = Category.find_by(params:[:id])
    #     @category.update(category_update_params)
    #     if @category
    #       render json: {category: @category, statues: 'category updated'}
    #     else
    #       render json: @category.errors, status: :unprocessable_entity
    #     end
    #   end

    private
    def category_params
        params.permit(categories: [:title, :user_id]).require(:categories)
    end

    # def category_update_params
    #     params.require(:category).permit(:hour, :minute)
    # end

    def options
        @options ||= {include: [:activities, :periods] }
      end

end
