class Api::ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    render json: { activities: @activities, message: 'All activities fectched' }
  end

  def create
    @activity = Activity.create(activity_params)
    if @activity
      render json: { statues: 'created', activity: @activity, message: 'Category was successfully created' }
    else
      render json: { message: 'Ooops category was not able to create please try again' }
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :category_id, :user_id)
  end
end
