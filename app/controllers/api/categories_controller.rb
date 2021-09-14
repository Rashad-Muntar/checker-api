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

    def update
        category = User.cateories.update()
    end

    private
    def category_params
        params.permit(categories: [:title, :progress, :user_id]).require(:categories)
    end

end
