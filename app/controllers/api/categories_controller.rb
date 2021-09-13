class Api::CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories
    end

    def create
        category = Category.new(category_params)
        if category.save
            render json: {statues: 'created', category: :category, message: 'Category successfully created'}
        else
            render json: {message: 'Ooops category was not able to create'}
        end
    end

    private
    def category_params
        params.require(:category).permit(:title, :progress)
    end
end
