class Api::ActivitiesController < ApplicationController

    def index
        @activities = Activity.all
        render json: {activities: @activities, message: 'All activities fectched'}
    end

    def create
        @activity = Activity.create(activity_params)
        if @activity
            render json: {statues: 'created', activity: @activity, message: 'Activity was successfully created'}
        else
            render json: {message: 'Ooops activity was not able to create'}
        end
    end

    def update
        activity = Activity.update
    end

    private
    def activity_params
        params.require(:activity).permit(:title, :category_id, :user_id)
    end
end
