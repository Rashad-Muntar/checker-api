class Api::PeriodsController < ApplicationController
    def create
        @period = Period.create(period_params)
        if @period
            render json: {statues: 'created', period: @period, message: 'period successfully created'}
        else
            render json: {message: 'Ooops period was not able to create'}
        end
    end

    private
    def period_params
        params.require(:period).permit(:hour, :minute, :second, :category_id, :user_id)
    end
end
