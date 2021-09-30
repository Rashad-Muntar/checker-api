class Api::ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    render json: { activities: @activities, message: 'All activities fectched' }
  end

  def create
    @activity = Activity.create(activity_params)
    if @activity
<<<<<<< HEAD
      render json: { statues: 'created', activity: @activity, message: 'Category was successfully created' }
    else
      render json: { message: 'Ooops category was not able to create please try again' }
=======
      render json: { statues: 'created', activity: @activity, message: 'Activity was successfully created' }
    else
      render json: { message: 'Ooops activity was not able to create' }
>>>>>>> fe59564d29148c48e8fdf0073bc991eba275153e
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :category_id, :user_id)
  end
end
