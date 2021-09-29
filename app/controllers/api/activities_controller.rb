class Api::ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    render json: { activities: @activities, message: 'All activities fectched' }
  end

  def create
    @activity = Activity.create(activity_params)
    if @activity
      render json: { statues: 'created', activity: @activity, message: 'Activity was successfully created' }
    else
      render json: { error: 'Ooops activity was not able to create' },  statues: :internal_server_error
    end
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    if @activity
      render json: { activity: @activity, statues: 'activity updated' }
    else
      render json: @activity.errors, statues: :internal_server_error
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :category_id, :user_id, :complete)
  end
end
